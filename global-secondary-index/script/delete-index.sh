#!/bin/sh

aws dynamodb update-table \
    --endpoint-url='http://localhost:8000' \
    --table-name GameScores \
    --global-secondary-index-updates '[
        {
            "Delete": {
                "IndexName": "GameTitleIndex"
            }
        }
    ]'

