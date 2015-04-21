#!/bin/sh

aws dynamodb create-table \
    --endpoint-url='http://localhost:8000' \
    --table-name GameScores \
    --attribute-definitions \
        AttributeName=UserId,AttributeType=S \
        AttributeName=GameTitle,AttributeType=S \
    --key-schema \
        AttributeName=UserId,KeyType=HASH \
        AttributeName=GameTitle,KeyType=RANGE \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1
