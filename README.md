# LinOnward Skills

一套面向独立开发者和小团队的决策、创作与交付技能包。它不替代模型已有能力，而是补上容易被忽略的判断：目标是否清楚、范围是否失控、计划哪里脆弱、事实是否可靠，以及交付结果是否真的可用。

技能均为自包含的 `SKILL.md`，无运行时依赖，可被 OpenAI Codex 与 Claude Code 发现。

## 技能地图

| 阶段 | Skill | 用途 |
| --- | --- | --- |
| 定义 | `shape-work` | 把模糊请求压缩为可验证的目标、边界与完成条件 |
| 取舍 | `cut-scope` | 切出最小完整交付，明确本轮不做什么 |
| 计划 | `challenge-plan` | 在编码前从价值、架构、数据和运维角度挑战计划 |
| 实现 | `trace-failure` | 建立证据链，定位根因后再修复 |
| 验收 | `prove-behavior` | 从用户路径出发，用运行证据证明结果可用 |
| 评审 | `inspect-change` | 按风险审查 diff、提交或 PR，输出可执行发现 |
| 文档 | `align-docs` | 根据真实改动同步现有文档，避免文档漂移 |
| 内容 | `write-wechat` | 策划、撰写、改写、审校微信公众号文章并按需生成配图 |
| 交接 | `carry-context` | 把当前状态压缩成下一位执行者能继续工作的交接包 |

推荐工作流：

```text
shape-work -> cut-scope -> challenge-plan -> 实现
                                      |
                         trace-failure（遇到异常）
                                      |
             prove-behavior -> inspect-change -> align-docs -> carry-context
```

这些技能不是固定流水线。只加载当前任务真正需要的那个技能。

`write-wechat` 创建前对 GitHub 公开技能进行了专项调研，取舍记录见 [微信公众号写作 Skills 调研](docs/wechat-writing-research.md)。

## 安装

### OpenAI Codex

把全部技能链接到用户级目录：

```bash
mkdir -p ~/.agents/skills
for skill in "$(pwd)"/skills/*/; do
  ln -sfn "$skill" ~/.agents/skills/"$(basename "$skill")"
done
```

新开一个 Codex 会话后即可自动匹配，也可用 `$shape-work` 这类名称显式调用。

### Claude Code

把仓库作为本地 marketplace 添加后安装：

```text
/plugin marketplace add <本仓库路径或 GitHub 地址>
/plugin install linonward-skills@linonward
```

## 仓库结构

```text
.
├── .claude-plugin/       # Claude Code 插件与 marketplace 清单
├── bin/check.sh          # 技能结构和 frontmatter 校验
├── skills/               # 每个子目录是一个独立技能
│   └── <skill>/
│       ├── SKILL.md
│       └── references/   # 仅在需要时读取的深度材料
├── AGENTS.md             # 维护约定
└── README.md
```

## 设计原则

- 描述负责准确触发，不把相邻任务一网打尽。
- 正文只保留会改变判断的约束，不复述模型本来就会做的步骤。
- 长清单、评分表和特定模式放进 `references/`，按需读取。
- 每个技能明确结果契约、停止条件和权限边界。
- 评审结论以证据和影响为核心，不以篇幅或格式为目标。

## 校验

```bash
bash bin/check.sh
```

## License

[MIT](LICENSE)
