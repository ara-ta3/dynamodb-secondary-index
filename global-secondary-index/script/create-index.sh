#!/bin/sh

aws dynamodb update-table \
    --endpoint-url='http://localhost:8000' \
    --table-name GameScores \
    --attribute-definitions \
        AttributeName=GameTitle,AttributeType=S \
        AttributeName=TopScore,AttributeType=N \
    --global-secondary-index-updates '[
        {
            "Create": {
                "IndexName": "GameTitleIndex",
                "KeySchema": [
                    {
                        "AttributeName": "GameTitle",
                        "KeyType": "HASH"
                    },
                    {
                        "AttributeName": "TopScore",
                        "KeyType": "RANGE"
                    }
                ],
                "Projection": {
                    "ProjectionType": "INCLUDE",
                    "NonKeyAttributes": ["UserId"]
                },
                "ProvisionedThroughput": {
                    "ReadCapacityUnits": 1,
                    "WriteCapacityUnits": 1
                }
            }
        }
    ]'

