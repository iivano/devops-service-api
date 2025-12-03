#!/usr/bin/env bash
set -e
npm start &
PID=$!
sleep 2
curl -f http://127.0.0.1:3000/status
kill $PID