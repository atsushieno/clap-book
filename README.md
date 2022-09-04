# CLAPオーディオプラグイン開発者ガイド (draft)

技術書典13およびM3 2022秋で配布予定のCLAPオーディオプラグイン開発者ガイドの原稿です。

リポジトリの基本構成はTechBooster/ReVIEW-Templateからのforkでありこれに準じます。ただしRe:VIEW原稿ファイルはmd2reviewを利用してmarkdownの草稿から変換してビルドします。

ビルドは以下の手順で行います:

- `./setup.sh`
- `cd node_modules && npm install svgexport && cd ..`
- `./build-all.sh`
