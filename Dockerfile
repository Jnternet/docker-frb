# 使用 Flutter 官方镜像作为基础
FROM ghcr.io/cirruslabs/flutter:latest

# 安装系统依赖
RUN apt-get update && \
    apt-get install -y \
    curl \
    build-essential \
    protobuf-compiler \ 
    #安装linux工具链
    clang \
    cmake \
    ninja-build \
    pkg-config \
    libgtk-3-dev && \
    #清除残留
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 安装最新 Rust 工具链
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable

# 将 Cargo 二进制目录加入 PATH
ENV PATH="/root/.cargo/bin:${PATH}"

# 安装 flutter-rust-bridge 代码生成器
RUN cargo install flutter_rust_bridge_codegen
