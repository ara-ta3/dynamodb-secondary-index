#!/bin/sh

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

aws dynamodb put-item \
    --endpoint-url='http://localhost:8000' \
    --table-name GameScores \
    --item '{
        "UserId": {"S":"101"},
        "GameTitle": {"S":"Meteor Blasters"},
        "TopScore": {"N":"1000"},
        "TopScoreDateTime": {"S":"2013-10-22:23:18:01"},
        "Wins": {"N":"12"},
        "Losses": {"N":"3"}
    }'


aws dynamodb put-item \
    --endpoint-url='http://localhost:8000' \
    --table-name GameScores \
    --item '{
        "UserId": {"S":"101"},
        "GameTitle": {"S":"Starship X"},
        "TopScore": {"N":"24"},
        "TopScoreDateTime": {"S":"2013-08-31:13:14:21"},
        "Wins": {"N":"4"},
        "Losses": {"N":"9"}
    }'

aws dynamodb put-item \
    --endpoint-url='http://localhost:8000' \
    --table-name GameScores \
    --item '{
        "UserId": {"S":"102"},
        "GameTitle": {"S":"Alien Adventure"},
        "TopScore": {"N":"192"},
        "TopScoreDateTime": {"S":"2013-07-12:11:07:56"},
        "Wins": {"N":"32"},
        "Losses": {"N":"192"}
    }'


aws dynamodb put-item \
    --endpoint-url='http://localhost:8000' \
    --table-name GameScores \
    --item '{
        "UserId": {"S":"102"},
        "GameTitle": {"S":"Galaxy Invaders"},
        "TopScore": {"N":"0"},
        "TopScoreDateTime": {"S":"2013-09-18:07:33:42"},
        "Wins": {"N":"0"},
        "Losses": {"N":"5"}
    }'


aws dynamodb put-item \
    --endpoint-url='http://localhost:8000' \
    --table-name GameScores \
    --item '{
        "UserId": {"S":"103"},
        "GameTitle": {"S":"Attack Ships"},
        "TopScore": {"N":"3"},
        "TopScoreDateTime": {"S":"2013-10-19:01:13:24"},
        "Wins": {"N":"1"},
        "Losses": {"N":"8"}
    }'


aws dynamodb put-item \
    --endpoint-url='http://localhost:8000' \
    --table-name GameScores \
    --item '{
        "UserId": {"S":"103"},
        "GameTitle": {"S":"Galaxy Invaders"},
        "TopScore": {"N":"2317"},
        "TopScoreDateTime": {"S":"2013-09-11:06:53:00"},
        "Wins": {"N":"40"},
        "Losses": {"N":"3"}
    }'


aws dynamodb put-item \
    --endpoint-url='http://localhost:8000' \
    --table-name GameScores \
    --item '{
        "UserId": {"S":"103"},
        "GameTitle": {"S":"Meteor Blasters"},
        "TopScore": {"N":"723"},
        "TopScoreDateTime": {"S":"2013-10-19:01:13:24"},
        "Wins": {"N":"22"},
        "Losses": {"N":"12"}
    }'


aws dynamodb put-item \
    --endpoint-url='http://localhost:8000' \
    --table-name GameScores \
    --item '{
        "UserId": {"S":"103"},
        "GameTitle": {"S":"Starship X"},
        "TopScore": {"N":"42"},
        "TopScoreDateTime": {"S":"2013-07-11:06:53:00"},
        "Wins": {"N":"4"},
        "Losses": {"N":"19"}
    }'

