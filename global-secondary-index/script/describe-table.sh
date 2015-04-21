#!/bin/sh

aws dynamodb describe-table \
    --endpoint-url 'http://localhost:8000' \
    --table-name "GameScores"
