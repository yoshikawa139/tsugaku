# 通学ダイヤ

自分専用の、オフラインで動く乗り換え検索PWA。

- 乗換時間は自分の足で測った値（通常／急ぎ）を使う
- 区間ごとの乗車位置（号車・ドア）を表示
- 経路と時刻表は「時刻表パック」（JSON）として取り込み、端末のブラウザ内にだけ保存する

アプリに入っている経路と時刻表は架空のサンプルです。

## ファイル

- `index.html` … 公開用（GitHub Pages）。`app.html` から生成
- `app.html` … アプリ本体
- `sw.js`, `manifest.webmanifest`, `icon.svg` … オフライン対応・ホーム画面追加用

`app.html` を変えたら `sh tools/build_index.sh` で `index.html` を作り直し、`sw.js` の CACHE を上げる。
