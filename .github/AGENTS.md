# 统一目录管理

继续遵守根目录 AGENTS.md 的正文、图片、原始 PDF、隐私和构建约束。

- 原有 books、docs、epub、raw、reports、scripts 及生成目录 .build、dist 原名迁入本目录。
- 根目录文件保持原位；catalog.json 的 file 字段以仓库根为基准，必须使用 `.github/books/` 路径。
- 构建与检查仍从仓库根执行 make；脚本、资源及所有生成物放在本目录，不能重新产生根级构建目录。
- 原始 PDF、17 册正文及图片只移动、不改写、不删除。raw/SHA256SUMS.txt 中的文件名仍相对 raw 目录有效。
- 图片文字卡片 manifest 的 path 以本内容目录为基准，使用 `books/assets/...`；对应审计脚本的 --repo 应指向本目录。
- 根目录只保留 `.git/`、`.github/` 两个目录，不创建旧路径、重复副本或兼容占位。
