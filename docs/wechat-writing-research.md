# 微信公众号写作 Skills 调研与整合说明

调研时间：2026-09-13。创建 `write-wechat` 前，通过 GitHub 代码搜索检索“微信公众号写作”“wechat article writer”“公众号文章”等关键词，并重点比较下列公开项目。

| 项目 | 主要优势 | 本技能吸收的思路 | 未整合的部分 |
| --- | --- | --- | --- |
| [xstongxue/best-skills](https://github.com/xstongxue/best-skills/tree/main/skills/wechat-article-writer) | 多写作类型路由、风格与配图分离 | 按请求模式和文章类型按需加载参考 | Draw.io、上传脚本、固定爆款标题公式 |
| [moonstachain/wechat-writer](https://github.com/moonstachain/wechat-writer) | 素材分类、作者 Style DNA、文章原型、去模板化 | 风格校准与原创边界、材料不足不编亲历 | 特定作者默认文风、固定口头禅和机械禁词表 |
| [Qson8/wechat-writing-skill](https://github.com/Qson8/wechat-writing-skill) | 选题、写作、评估、配图需求一体化 | 将选题、改写、审稿作为同一写作 skill 的不同模式 | 固定受众画像和外部图片脚本 |
| [flaqai/Awesome_SEO_Writing_Skill](https://github.com/flaqai/Awesome_SEO_Writing_Skill/tree/main/writer/wechat-writer) | 任务书、主张证据账本、多骨架、移动端编辑门禁 | 事实边界、标题兑现、五维复检、发布权限边界 | 重型文件流水线、共享工具依赖和 SEO 扩展 |
| [ilang-ai/ilang-openclaw](https://github.com/ilang-ai/ilang-openclaw/blob/main/skills/WeChat-Awesome/SKILL.md) | 强调用户素材、禁止虚构、交付自查 | 把真实材料和作者责任放在传播技巧之前 | 无素材即拒绝、强制反问/表格/数字比例、流量承诺 |
| [netease-youdao/LobsterAI](https://github.com/netease-youdao/LobsterAI/blob/main/SKILLs/content-planner/SKILL.md) | 选题搜索、差异角度和内容日历 | 选题应同时考虑读者相关性、证据可得性和差异化 | 搜狗抓取脚本、固定内容日历流程 |

## 整合结论

`write-wechat` 将写作限定为内容决策与成稿质量，不把素材抓取、图片生成、HTML 排版或公众号发布自动纳入权限。它使用四层渐进式结构：

1. `SKILL.md` 负责模式分流、真实性、作者边界和交付契约。
2. `brief-and-evidence.md` 处理任务书、事实、观点、推断与个人材料。
3. `article-shapes.md` 和 `style-calibration.md` 处理结构选择与作者声音。
4. `editorial-gate.md` 处理准确、观点、实用、合声、好读和发布状态。

整合采用概念级重构与原创表述，没有复制任一项目的完整流程、专属文风、示例文章或脚本。
