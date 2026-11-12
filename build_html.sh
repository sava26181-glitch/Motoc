#!/bin/sh
# Пересобирает index.html из tools/ и копирует в Android, iOS и сервер
cd "$(dirname "$0")"
{ cat tools/head.html; sed '/^if(typeof module/d' tools/engine.js; cat tools/app.js tools/online.js; echo '</script></body></html>'; } > app/src/main/assets/index.html
cp app/src/main/assets/index.html ios/MotoStunt/index.html
cp app/src/main/assets/index.html server/index.html
