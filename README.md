# Flutter 学习

活到老学到老！以下配置暂时以模拟器为主，物理机器配置稍后。

## 环境配置

1. 下载 [Flutter SDK](https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.5.4-hotfix.2-stable.zip)，然后找个地方解压：
```bash
$ cd ~/development
$ unzip ~/Downloads/flutter_macos_v1.5.4-hotfix.2-stable.zip
```
2. 添加环境变量：
```bash
$ export PATH="$PATH:`pwd`/flutter/bin"
```
_有坑请注意： 使用 zsh shell 的 terminal， 以上设置的环境变量没用，你需要在 '~/.zshrc' 文件中配置 PATH。_

3. 可以执行以下命令预下载一些开发包，并进行环境诊断：
```bash
$ flutter precache
$ flutter doctor
```

4. 安装 xcode，确保命令行工具版本最新，并确认 license agreement 已执行：
```bash
$ sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
$ sudo xcodebuild -license
```
5. 试试看 iOS 模拟器能运行否：
```bash
$ open -a Simulator
```

## IDE 配置

以 `VS Code` 为例子：

1. 安装 `Flutter` 和 `Dart` 两个 plugins；
2. 使用 `cmd + shift + P` 打开命令面板；
3. 选择 `Flutter: New Project` 新建项目；
4. 选择 `Flutter: Launch Simulator` 打开模拟器；
5. 菜单 `Debug > Start Debugging` 运行项目。
