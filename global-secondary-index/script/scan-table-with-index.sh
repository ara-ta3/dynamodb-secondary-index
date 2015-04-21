#!/bin/sh

aws dynamodb scan \
    --endpoint-url='http://localhost:8000' \
    --table-name GameScores \
    --index-name GameTitleIndex

