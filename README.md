# Flutter + Rust 集成开发镜像

基于 `ghcr.io/cirruslabs/flutter:3.27.3` 官方镜像构建的集成开发环境，预装 Rust 工具链和 `flutter-rust-bridge` 代码生成器，适用于 Flutter 与 Rust 的混合开发场景。

## 镜像特性

- **预装组件**:
  - Flutter SDK `3.27.3` (含 Dart)
  - Rust 最新稳定版工具链 (`stable`)
  - `flutter_rust_bridge_codegen` 代码生成器
  - 系统依赖: `curl`, `build-essential`, `protobuf-compiler`

- **优化配置**:
  - 自动清理 APT 缓存减小镜像体积
  - 全局环境变量配置 (`~/.cargo/bin` 已加入 PATH)

## 构建镜像

```bash
docker build -t flutter-rust-bridge .
```

以上内容由Deepseek生成
