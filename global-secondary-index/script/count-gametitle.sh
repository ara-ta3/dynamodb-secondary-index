#!/bin/sh

aws dynamodb query \
    --endpoint-url='http://localhost:8000' \
    --table-name GameScores \
    --select COUNT \
    --index-name GameTitleIndex \
    --key-conditions '{
        "GameTitle": {
            "AttributeValueList": [
                {
                    "S": "Galaxy Invaders"
                }
            ],
            "ComparisonOperator": "EQ"
        }
    }'


