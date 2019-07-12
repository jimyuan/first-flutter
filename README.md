# Flutter 学习

活到老学到老！以下配置暂时以模拟器为主。

## iOS 环境配置

1. 下载 [Flutter SDK](https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.5.4-hotfix.2-stable.zip)，然后找个地方解压：
```bash
$ cd ~/development
$ unzip ~/Downloads/flutter_macos_v1.5.4-hotfix.2-stable.zip
```

2. 添加环境变量：
```bash
$ export PATH="$PATH:`pwd`/flutter/bin"
```

3. 可以执行以下命令预下载一些开发过程中使用的二进制文件：
```bash
$ flutter precache
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

## 部署到 iOS 真机上

1. 确保 `homebrew`为最新：
```bash
$ brew update
```

2. 安装一系列工具
```bash
brew install --HEAD usbmuxd
brew link usbmuxd
brew install --HEAD libimobiledevice
brew install ideviceinstaller ios-deploy cocoapods
pod setup
```

3. 按照 Xcode 签名流程来配置项目(略)。

## Android 环境配置

1. 下载并安装 [Android Studio](https://developer.android.google.cn/studio)；
2. 配置 Android 模拟器： AVD Manager > Create Virtual Device， 随便选个最新的吧；

## IDE 配置

`VS Code` 为例子：

1. 安装 `Flutter` 插件，过程中 `Dart` 插件将自动安装；
2. 使用 `cmd + shift + P` 打开命令面板；
3. 选择 `Flutter: New Project` 新建项目；
4. 选择 `Flutter: Launch Simulator` 打开模拟器；
5. 菜单 `Debug > Start Debugging` 运行项目。

以上都配置好了以后，可以通过以下命令查看配置环境，看看是否都打上勾了：
```bash
# normal check
$ flutter doctor
# details of check list
$ flutter doctor -v
```

## 应用名称和图标设置

在 Flutter 中，居然没有统一地修改图标和应用名称的地方，所以要在项目中各自语言对应的目录内进行修改:

### 应用名称
- __Android__：`android ▸ app ▸ src ▸ main ▸ AndroidManifest.xml` 中修改 android:label="XXX"
- __iOS__：`ios ▸ Runner ▸ Info.plist` 中修改 CFBundleName 对应的 Value

### 图标
- __Android__：`android ▸ app ▸ src ▸ main ▸ res ▸ mipmap-...` 文件夹中替换相应图片
- __iOS__：`ios ▸ Runner ▸ Assets.xcassets ▸ AppIcon.appiconset` 文件夹中替换相应尺寸的图片， 如使用不同文件名，须更新 Contents.json。

### 启动图片
- __Android__： `android ▸ app ▸ src ▸ res ▸ drawable ▸ launch_background.xml` 通过自定义 drawable 来实现自定义启动界面。
- __iOS__：`ios ▸ Runner ▸ Assets.xcassets ▸ LaunchImage.imageset` 文件夹中替换相应尺寸的图片，如使用不同文件名，须更新 Contents.json。

## 填坑

1. 使用 zsh shell 的 terminal， 你需要在 '~/.zshrc' 文件中配置环境变量的 PATH 内容。

2. 项目中依赖的第三方依赖包，要配置成国内的镜像下载，否则可能完蛋：
```bash
export PUB_HOSTED_URL="https://pub.flutter-io.cn"
export FLUTTER_STORAGE_BASE_URL="https://storage.flutter-io.cn"
```

3. 在安装依赖包过程中，万一失败，再次安装，可能会出现“Waiting for another flutter command to release the startup lock” 提示，去 flutter 的安装目录下 `/bin/cache/` ，删除 lockfile 文件。 
