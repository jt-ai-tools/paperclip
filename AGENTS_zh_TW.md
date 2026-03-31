# AGENTS.md

針對本倉庫的人類與 AI 貢獻者的指南。

## 1. 目的

Paperclip 是 AI 代理公司的控制平面。
當前的實作目標是 V1，並定義於 `doc/SPEC-implementation_zh_TW.md` 中。

## 2. 請先閱讀

在進行任何更改之前，請依序閱讀：

1. `doc/GOAL_zh_TW.md`
2. `doc/PRODUCT_zh_TW.md`
3. `doc/SPEC-implementation_zh_TW.md`
4. `doc/DEVELOPING_zh_TW.md`
5. `doc/DATABASE_zh_TW.md`

`doc/SPEC_zh_TW.md` 是長期的產品上下文。
`doc/SPEC-implementation_zh_TW.md` 是具體的 V1 建置合約。

## 3. 倉庫地圖

- `server/`: Express REST API 與編排服務
- `ui/`: React + Vite 管理介面 UI
- `packages/db/`: Drizzle 綱要 (Schema)、遷移 (Migrations)、資料庫用戶端
- `packages/shared/`: 共享類型、常量、驗證器、API 路徑常量
- `packages/adapters/`: 代理適配器實作 (Claude, Codex, Cursor 等)
- `packages/adapter-utils/`: 共享適配器工具
- `packages/plugins/`: 外掛系統套件
- `doc/`: 運作與產品文件

## 4. 開發設置 (自動資料庫)

在開發環境中，不設置 `DATABASE_URL` 即可使用嵌入式 PGlite。

```sh
pnpm install
pnpm dev
```

這將啟動：

- API: `http://localhost:3100`
- UI: `http://localhost:3100` (在開發中介軟體模式下由 API 伺服器提供)

快速檢查：

```sh
curl http://localhost:3100/api/health
curl http://localhost:3100/api/companies
```

重置本地開發資料庫：

```sh
rm -rf data/pglite
pnpm dev
```

## 5. 核心工程規則

1. **保持變更以公司為作用域。**
每個領域實體都應作用於特定公司，且必須在路由/服務中強制執行公司邊界。

2. **保持合約同步。**
如果您更改了綱要或 API 行為，請更新所有受影響的層級：
- `packages/db` 綱要與匯出
- `packages/shared` 類型/常量/驗證器
- `server` 路由/服務
- `ui` API 用戶端與頁面

3. **維護控制平面不變量。**
- 單一負責人任務模型
- 原子化 Issue 領取語義
- 受治理操作的批准門檻
- 預算硬性停止自動暫停行為
- 變更操作的活動記錄

4. **除非要求，否則不要大規模替換策略文件。**
偏好增量更新。保持 `doc/SPEC_zh_TW.md` 與 `doc/SPEC-implementation_zh_TW.md` 一致。

5. **保持計畫文件帶有日期且集中管理。**
新的計畫文件應放在 `doc/plans/` 中，並使用 `YYYY-MM-DD-slug.md` 檔名。

## 6. 資料庫變更流程

更改數據模型時：

1. 編輯 `packages/db/src/schema/*.ts`
2. 確保新表已從 `packages/db/src/schema/index.ts` 匯出
3. 產生遷移檔案：

```sh
pnpm db:generate
```

4. 驗證編譯：

```sh
pnpm -r typecheck
```

注意：
- `packages/db/drizzle.config.ts` 從 `dist/schema/*.js` 讀取編譯後的綱要
- `pnpm db:generate` 會先編譯 `packages/db`

## 7. 交付前的驗證

在宣佈完成前執行完整的檢查：

```sh
pnpm -r typecheck
pnpm test:run
pnpm build
```

如果任何項目無法執行，請明確報告未執行的項目及其原因。

## 8. API 與身份驗證預期

- 基礎路徑：`/api`
- 管理介面訪問被視為具備完全控制權的營運者上下文
- 代理訪問使用 Bearer API 金鑰 (`agent_api_keys`)，並在存儲時進行雜湊處理
- 代理金鑰不得訪問其他公司

添加端點時：

- 應用公司訪問檢查
- 強制執行參與者權限 (管理介面 vs 代理)
- 為變更操作寫入活動日誌條目
- 返回一致的 HTTP 錯誤 (`400/401/403/404/409/422/500`)

## 9. UI 預期

- 保持路由和導航與可用的 API 介面一致
- 在公司作用域的頁面中使用公司選擇上下文
- 清晰地顯示失敗資訊；不要默默忽略 API 錯誤

## 10. 完成的定義 (Definition of Done)

當滿足以下所有條件時，變更才算完成：

1. 行為符合 `doc/SPEC-implementation_zh_TW.md`
2. 類型檢查、測試和建置皆通過
3. db/shared/server/ui 之間的合約已同步
4. 當行為或命令更改時，文件已更新
