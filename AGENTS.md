# LinOnward Skills 维护指南

本仓库收录可被 Codex 与 Claude Code 直接发现的纯 prompt 技能。

## 不变量

- 每个技能位于 `skills/<name>/SKILL.md`，目录名使用 kebab-case。
- `SKILL.md` frontmatter 必须包含 `name` 与 `description`，且 `name` 等于目录名。
- `description` 要说明技能做什么、何时使用，并避免覆盖相邻技能的职责。
- 只写会改变执行质量的判断、约束和停止条件，不写通用模型能力教程。
- 大型清单或仅在特定模式下需要的内容放在 `references/`，正文必须说明何时读取。
- 新增、删除或重命名技能时同步 README 的技能地图。

## 完成前

运行 `bash bin/check.sh`。如果技能包含脚本，还要单独验证脚本的真实行为。
