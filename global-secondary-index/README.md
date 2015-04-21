dynamodb-global-secondary-index
===

# See Also

https://docs.aws.amazon.com/ja_jp/amazondynamodb/latest/developerguide/GSI.html

# CreateTable

```
make create-table
```

## script/create-table.sh

```
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
```

# InsertSeeds

```
make insert-seed
```

## script/insert-seed.sh

```
aws dynamodb put-item \
    --endpoint-url='http://localhost:8000' \
    --table-name GameScores \
    --item '{
        "UserId": {"S":"101"},
        "GameTitle": {"S":"Galaxy Invaders"},
        "TopScore": {"N":"5842"},
        "TopScoreDateTime": {"S":"2013-09-15:17:24:31"},
        "Wins": {"N":"21"},
        "Losses": {"N":"72"}
    }'

    ...
```
