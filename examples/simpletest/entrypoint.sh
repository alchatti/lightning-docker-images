#!/usr/bin/env bash
export SIMPLETEST_DB=sqlite://tmp/site.sqlite
export SIMPLETEST_BASE_URL="http://127.0.0.1:8080"

php -S 127.0.0.1:8080 -t /app/web > /dev/null 2>&1 &

sleep 2

curl -I ${SIMPLETEST_BASE_URL}

php /app/web/core/scripts/run-tests.sh \
    --concurrency 20 \
    --url ${SIMPLETEST_BASE_URL} \
    --dburl ${SIMPLETEST_DB} \
    --sqlite /tmp/tmp.sqlite \
    --color \
    commerce