# 通学ダイヤ

オフラインで動く乗り換え検索PWA

## ファイル

- `index.html` … 公開用（GitHub Pages）。`app.html` から生成
- `app.html` … アプリ本体
- `sw.js`, `manifest.webmanifest`, `icon.svg` … オフライン対応・ホーム画面追加用

`app.html` を変えたら `sh tools/build_index.sh` で `index.html` を作り直し、`sw.js` の CACHE を上げる。
