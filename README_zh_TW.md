<p align="center">
  <img src="doc/assets/header.png" alt="Paperclip — 運作您的事業" width="720" />
</p>

<p align="center">
  <a href="README.md"><strong>English</strong></a> &middot;
  <a href="#快速入門"><strong>快速入門</strong></a> &middot;
  <a href="https://paperclip.ing/docs"><strong>文件</strong></a> &middot;
  <a href="https://github.com/paperclipai/paperclip"><strong>GitHub</strong></a> &middot;
  <a href="https://discord.gg/m4HZY7xNG3"><strong>Discord</strong></a>
</p>

<p align="center">
  <a href="https://github.com/paperclipai/paperclip/blob/master/LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue" alt="MIT License" /></a>
  <a href="https://github.com/paperclipai/paperclip/stargazers"><img src="https://img.shields.io/github/stars/paperclipai/paperclip?style=flat" alt="Stars" /></a>
  <a href="https://discord.gg/m4HZY7xNG3"><img src="https://img.shields.io/discord/000000000?label=discord" alt="Discord" /></a>
</p>

<br/>

<div align="center">
  <video src="https://github.com/user-attachments/assets/773bdfb2-6d1e-4e30-8c5f-3487d5b70c8f" width="600" controls></video>
</div>

<br/>

## 什麼是 Paperclip？

# 為「零人類公司」打造的開源編排系統

**如果 OpenClaw 是「員工」，那麼 Paperclip 就是「公司」**

Paperclip 是一個基於 Node.js 伺服器和 React UI 的系統，用於編排 AI 代理團隊來運作業務。您可以接入自己的代理、分配目標，並從一個儀表板追蹤代理的工作和成本。

它看起來像是一個任務管理器 —— 但在底層，它擁有組織架構圖、預算、治理、目標對齊和代理協調功能。

**管理業務目標，而不是 Pull Request。**

|        | 步驟            | 範例                                                            |
| ------ | --------------- | ------------------------------------------------------------------ |
| **01** | 定義目標        | _「打造排名第一的 AI 筆記應用，達到 100 萬美元的每月經常性收入 (MRR)。」_ |
| **02** | 聘僱團隊        | CEO、CTO、工程師、設計師、行銷人員 —— 任何機器人、任何提供商。 |
| **03** | 批准並運行      | 審查策略。設定預算。點擊開始。從儀表板進行監控。 |

<br/>

> **即將推出：Clipmart** — 一鍵下載並運行整間公司。瀏覽預建的公司模板 —— 包含完整的組織結構、代理配置和技能 —— 並在幾秒鐘內將它們導入您的 Paperclip 實例。

<br/>

<div align="center">
<table>
  <tr>
    <td align="center"><strong>支援</strong></td>
    <td align="center"><img src="doc/assets/logos/openclaw.svg" width="32" alt="OpenClaw" /><br/><sub>OpenClaw</sub></td>
    <td align="center"><img src="doc/assets/logos/claude.svg" width="32" alt="Claude" /><br/><sub>Claude Code</sub></td>
    <td align="center"><img src="doc/assets/logos/codex.svg" width="32" alt="Codex" /><br/><sub>Codex</sub></td>
    <td align="center"><img src="doc/assets/logos/cursor.svg" width="32" alt="Cursor" /><br/><sub>Cursor</sub></td>
    <td align="center"><img src="doc/assets/logos/bash.svg" width="32" alt="Bash" /><br/><sub>Bash</sub></td>
    <td align="center"><img src="doc/assets/logos/http.svg" width="32" alt="HTTP" /><br/><sub>HTTP</sub></td>
  </tr>
</table>

<em>只要能接收心跳信號 (heartbeat)，就能被聘僱。</em>

</div>

<br/>

## Paperclip 適合您，如果：

- ✅ 您想建立 **自主運作的 AI 公司**
- ✅ 您正在 **協調許多不同的代理** (OpenClaw, Codex, Claude, Cursor) 以達成共同目標
- ✅ 您同時開啟了 **20 個 Claude Code 終端機**，並遺失了每個人的進度
- ✅ 您希望代理 **24/7 自主運行**，但仍想審查工作並在需要時介入
- ✅ 您想 **監控成本** 並執行預算
- ✅ 您想要一種管理代理的流程，感覺就像是在 **使用任務管理器**
- ✅ 您想 **從手機上** 管理您的自主業務

<br/>

## 特色功能

<table>
<tr>
<td align="center" width="33%">
<h3>🔌 接入您自己的代理</h3>
任何代理、任何運行環境、一個組織架構圖。只要能接收心跳信號，就能被聘僱。
</td>
<td align="center" width="33%">
<h3>🎯 目標對齊</h3>
每個任務都能追溯到公司使命。代理知道<em>該做什麼</em>以及<em>為什麼而做</em>。
</td>
<td align="center" width="33%">
<h3>💓 心跳信號</h3>
代理按計畫喚醒、檢查工作並採取行動。委派在組織架構圖中上下流動。
</td>
</tr>
<tr>
<td align="center">
<h3>💰 成本控制</h3>
每個代理都有每月預算。當達到上限時，他們會停止。不會有失控的成本。
</td>
<td align="center">
<h3>🏢 多公司支援</h3>
一次部署，多間公司。完整的數據隔離。為您的投資組合提供一個控制平面。
</td>
<td align="center">
<h3>🎫 工單系統</h3>
追蹤每一次對話。解釋每一個決定。完整的工具調用追蹤和不可篡改的審計日誌。
</td>
</tr>
<tr>
<td align="center">
<h3>🛡️ 治理</h3>
您就是董事會。批准聘僱、覆蓋策略、隨時暫停或終止任何代理。
</td>
<td align="center">
<h3>📊 組織架構圖</h3>
層級、角色、匯報線。您的代理有老闆、職稱和職位描述。
</td>
<td align="center">
<h3>📱 行動裝置就緒</h3>
隨時隨地監控並管理您的自主業務。
</td>
</tr>
</table>

<br/>

## Paperclip 解決的問題

| 沒有 Paperclip                                                                                                                     | 使用 Paperclip                                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| ❌ 您開啟了 20 個 Claude Code 分頁，無法追蹤哪個分頁在做什麼。重啟後會遺失所有進度。                              | ✅ 任務基於工單，對話採用執行緒模式，會話在重啟後依然存在。                                                |
| ❌ 您必須手動從多個地方收集上下文，以提醒機器人您實際在做什麼。                                     | ✅ 上下文從任務流向專案和公司目標 —— 您的代理始終知道該做什麼以及原因。                  |
| ❌ 代理配置檔案夾混亂，且您正在重新發明代理之間的任務管理、溝通和協調。 | ✅ Paperclip 開箱即用提供組織圖、工單、委派和治理 —— 因此您是在運作公司，而不是一堆腳本。 |
| ❌ 失控的迴圈浪費了數百美元的 Token，並在您發現之前就耗盡了配額。                           | ✅ 成本追蹤會顯示 Token 預算，並在代理耗盡時對其進行限制。管理層透過預算決定優先順序。                    |
| ❌ 您有重複性工作（客戶支援、社群、報告），必須記得手動啟動它們。                        | ✅ 心跳信號按計畫處理常規工作。管理層進行監督。                                                                |
| ❌ 您有一個點子，必須找到您的 Repo、啟動 Claude Code、保持分頁開啟並全程監督。                                | ✅ 在 Paperclip 中添加任務。您的編碼代理會持續工作直到完成。管理層審查其工作。                              |

<br/>

## 為什麼 Paperclip 很特別

Paperclip 正確處理了複雜的編排細節。

|                                   |                                                                                                               |
| --------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| **原子化執行。**             | 任務領取和預算執行是原子化的，因此不會有重複工作，也不會有失控的支出。                      |
| **持久的代理狀態。**       | 代理在多次心跳之間恢復相同的任務上下文，而不是從頭開始。                     |
| **運行時技能注入。**      | 代理可以在運行時學習 Paperclip 工作流和專案上下文，無需重新訓練。                      |
| **具備回滾功能的治理。**     | 強制執行批准門檻，配置更改具備版本控制，且可以安全地回滾錯誤的更改。        |
| **目標感知的執行。**         | 任務攜帶完整的目標繼承關係，因此代理始終能看到「原因」，而不僅僅是一個標題。                        |
| **可移植的公司模板。**   | 匯出/匯入組織、代理和技能，並具備機密資訊清除和衝突處理功能。                          |
| **真正的多公司隔離。** | 每個實體都以公司為作用域，因此一次部署可以運行多間具有獨立數據和審計追蹤的公司。 |

<br/>

## Paperclip 不是什麼

|                              |                                                                                                                      |
| ---------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| **不是聊天機器人。**           | 代理有工作要完成，而不僅僅是聊天視窗。                                                                                  |
| **不是代理框架。**  | 我們不教您如何建立代理。我們教您如何運作由代理組成的公司。                                |
| **不是工作流構建器。**  | 沒有拖放式管道。Paperclip 對公司進行建模 —— 包含組織圖、目標、預算和治理。            |
| **不是提示詞 (Prompt) 管理器。**    | 代理自備提示詞、模型和運行環境。Paperclip 管理它們工作的組織。               |
| **不是單一代理工具。** | 這是為團隊設計的。如果您只有一個代理，您可能不需要 Paperclip。如果您有二十個 —— 您絕對需要。 |
| **不是程式碼審查工具。**  | Paperclip 編排工作，而不是 Pull Request。請使用您自己的審查流程。                                       |

<br/>

## 快速入門

開源。自託管。不需要 Paperclip 帳號。

```bash
npx paperclipai onboard --yes
```

如果您已經配置了 Paperclip，重新運行 `onboard` 會保留現有配置。使用 `paperclipai configure` 來編輯設置。

或者手動安裝：

```bash
git clone https://github.com/paperclipai/paperclip.git
cd paperclip
pnpm install
pnpm dev
```

這將在 `http://localhost:3100` 啟動 API 伺服器。系統會自動建立嵌入式 PostgreSQL 資料庫 —— 無需手動設置。

> **系統需求：** Node.js 20+, pnpm 9.15+

<br/>

## 常見問題 (FAQ)

**典型的設置是什麼樣的？**
在本地，單個 Node.js 進程管理嵌入式 Postgres 和本地檔案存儲。對於生產環境，請將其指向您自己的 Postgres 並隨意部署。配置專案、代理和目標 —— 代理會處理剩下的工作。

如果您是個人創業者，可以使用 Tailscale 隨時隨地訪問 Paperclip。之後在需要時可以部署到如 Vercel 等平台。

**我可以運行多間公司嗎？**
可以。單次部署可以運行無限數量的公司，且具備完整的數據隔離。

**Paperclip 與 OpenClaw 或 Claude Code 等代理有什麼不同？**
Paperclip _使用_ 這些代理。它將它們編排成一間公司 —— 包含組織架構圖、預算、目標、治理和問責制度。

**為什麼我應該使用 Paperclip，而不是直接將我的 OpenClaw 指向 Asana 或 Trello？**
代理編排在如何協調任務領取、如何維持會話、監控成本、建立治理方面有其細微之處 - Paperclip 為您處理了這些。

（「接入您自己的工單系統」已在路線圖中）

**代理是持續運行的嗎？**
預設情況下，代理根據計畫的心跳信號和基於事件的觸發器（任務分配、@-提及）運行。您也可以接入像 OpenClaw 這樣的持續運行代理。您提供代理，Paperclip 負責協調。

<br/>

## 開發

```bash
pnpm dev              # 完整開發模式 (API + UI, 監聽模式)
pnpm dev:once         # 完整開發模式，不監聽檔案更改
pnpm dev:server       # 僅伺服器
pnpm build            # 建置全部
pnpm typecheck        # 類型檢查
pnpm test:run         # 執行測試
pnpm db:generate      # 產生資料庫遷移檔案
pnpm db:migrate       # 執行遷移
```

請參閱 [doc/DEVELOPING_zh_TW.md](doc/DEVELOPING_zh_TW.md) 獲取完整的開發指南。

<br/>

## 路線圖 (Roadmap)

- ✅ 外掛系統 (例如：添加知識庫、自定義追蹤、隊列等)
- ✅ 獲取 OpenClaw / claw 風格的代理員工
- ✅ companies.sh - 匯入和匯出整個組織
- ✅ 簡易的 AGENTS.md 配置
- ✅ 技能管理器
- ✅ 定時常規任務
- ✅ 更好的預算編列
- ⚪ 產出物與部署 (Artifacts & Deployments)
- ⚪ CEO 聊天
- ⚪ 最大化模式 (MAXIMIZER MODE)
- ⚪ 多位人類使用者
- ⚪ 雲端 / 沙盒代理 (例如：Cursor / e2b 代理)
- ⚪ 雲端部署
- ⚪ 桌面應用程式

<br/>

## 社群與外掛

在 [awesome-paperclip](https://github.com/gsxdsm/awesome-paperclip) 尋找外掛與更多資訊。

## 貢獻

我們歡迎各方貢獻。詳情請參閱 [貢獻指南](CONTRIBUTING_zh_TW.md)。

<br/>

## 社群

- [Discord](https://discord.gg/m4HZY7xNG3) — 加入社群
- [GitHub Issues](https://github.com/paperclipai/paperclip/issues) — 錯誤回報與功能請求
- [GitHub Discussions](https://github.com/paperclipai/paperclip/discussions) — 想法與 RFC

<br/>

## 授權

MIT &copy; 2026 Paperclip

## 星星歷史 (Star History)

[![Star History Chart](https://api.star-history.com/image?repos=paperclipai/paperclip&type=date&legend=top-left)](https://www.star-history.com/?repos=paperclipai%2Fpaperclip&type=date&legend=top-left)

<br/>

---

<p align="center">
  <img src="doc/assets/footer.jpg" alt="" width="720" />
</p>

<p align="center">
  <sub>基於 MIT 授權開源。為想要經營公司而不是照看代理的人而建。</sub>
</p>
