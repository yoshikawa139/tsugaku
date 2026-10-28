#!/bin/sh
# app.html（アプリ本体）から GitHub Pages 用の index.html を生成する
cd "$(dirname "$0")/.."
{
  echo '<!doctype html><html lang="ja"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover"><meta name="theme-color" content="#12161C"><link rel="manifest" href="manifest.webmanifest"><meta name="apple-mobile-web-app-capable" content="yes"><link rel="apple-touch-icon" href="icon.svg"><style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font-size:14px}img{max-width:100%}[hidden]{display:none!important}</style>'
  sed -n '1,/<\/style>/p' app.html
  echo '</head><body>'
  sed '1,/<\/style>/d' app.html
  echo '<script>if("serviceWorker" in navigator && location.protocol==="https:") navigator.serviceWorker.register("sw.js");</script></body></html>'
} > index.html
