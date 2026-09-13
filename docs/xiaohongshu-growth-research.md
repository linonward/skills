# 小红书内容增长 Skills 调研与整合说明

调研时间：2026-09-13。创建 `grow-xiaohongshu` 前，先在 skills.sh 和 GitHub 检索 “xiaohongshu content growth”“rednote writing”“小红书运营”“爆款拆解”等关键词，并查看候选仓库的活跃度、许可证与实际 `SKILL.md`。

| 项目 | 调研时信号 | 主要优势 | 本技能吸收的思路 | 未整合的部分 |
| --- | --- | --- | --- | --- |
| [autoclaw-cc/xiaohongshu-mcp-skills](https://github.com/autoclaw-cc/xiaohongshu-mcp-skills) | 约 3K skills.sh 安装、258 stars、MIT | 站内搜索热门与近期内容，结合详情和评论做内容规划 | 实际样本优先、热门/近期分层、评论需求进入选题 | 对特定 MCP、登录状态和工具名的绑定 |
| [jackwener/xiaohongshu-cli](https://github.com/jackwener/xiaohongshu-cli) | 约 1.3K skills.sh 安装、2.5K stars | 搜索、读取、发布和数据导出的完整 CLI 能力 | 将平台读取、数据获取与内容判断区分开 | CLI 安装与自动发布流程；本技能保持纯 prompt |
| [vivy-yi/xiaohongshu-skills](https://github.com/vivy-yi/xiaohongshu-skills) | 435 stars、139 个细分技能 | 覆盖定位、内容规划、SEO、冷启动、增长和合规 | 内容支柱、内容组合、指标映射和迭代闭环 | 固定发布时间、发布频率、阈值和增长结果；仓库未声明许可证，因此只做概念级比较 |
| [Xiangyu-CAS/xiaohongshu-ops-skill](https://github.com/Xiangyu-CAS/xiaohongshu-ops-skill) | 2.3K stars | 账号采样、五维体检、结论落到下一步动作 | 账号诊断应看一段时期的结构，输出优势、短板和动作 | OpenClaw 专属浏览器、自动化操作和固定模板；仓库未声明许可证 |
| [aislinn-yang/rednote-writing-skill](https://github.com/aislinn-yang/rednote-writing-skill) | MIT，针对真实账号的写作 skill | 区分事实与延伸思考，保护作者声音，写作与审查分开 | 不编经历、先兑现内容再做包装、单篇产物收口 | 特定账号人设、口头禅、Notion 流程和机械禁词表 |
| [chubbyguan/chubbyskills](https://github.com/chubbyguan/chubbyskills/tree/main/xiaohongshu-ingest) | 671 stars、MIT | 将笔记结构化后按人群、场景、痛点、情绪和钩子拆解 | 拆解字段结构化、从评论与内容生成原创选题 | Cookie 抓取、下载与第三方模型脚本；默认不进入外部采集 |
| [TimLai666/skills](https://github.com/TimLai666/skills/tree/main/plugins/marketing-strategy/skills/content-growth-studio) | MIT，跨渠道增长 skill | source-led/brief-led 分流，区分观察与增长预测，以目标选择模式 | 数据充分性门禁、按用户结果缩减交付、包装必须兑现承诺 | 全渠道范围和庞大工作流，本技能只保留小红书所需部分 |

Stars 与安装量是调研当日快照，只用于判断采用广度，不代表内容正确。平台机制与规范具有时效性，技能不固化第三方声称的算法权重、发布时间或“爆款阈值”。

## 整合结论

`grow-xiaohongshu` 采用一个闭环和四份按需参考：

1. `SKILL.md` 负责模式路由、增长循环、证据强度和外部操作边界。
2. `positioning-and-system.md` 将人群、任务、价值、差异证据与内容支柱连接起来。
3. `research-and-ideation.md` 用相关热门、近期内容和可比账号降低样本偏差，并把样本机制转为原创选题。
4. `note-and-visual-package.md` 把标题、封面、开头、正文、视觉和 CTA 视为一条承诺链。
5. `experiments-and-review.md` 用一致口径、可比基线和可证伪假设驱动下一轮决策。

新 skill 不包含抓取、登录、发帖或刷量脚本。它可以在用户授权且当前工具可用时利用真实平台材料，但内容分析不会自动扩大为外部互动或发布。整合采用概念级重构和原创表述，没有复制候选项目的专属文风、示例帖子或代码。
