D:\Repositories\cutechess\build-qt6\Release\cutechess-cli.exe `
    -engine name="MyBot" cmd="$PSScriptRoot/../Chess-Challenge/bin/Release/net6.0/Chess-Challenge.exe" arg="uci" arg="MyBot" `
    -engine name="MyBotv5" cmd="$PSScriptRoot/../Chess-Challenge/bin/Release/net6.0/Chess-Challenge.exe" arg="uci" arg="MyBotv5" `
    -each proto=uci tc=0/30+0 `
    -maxmoves 2000 `
    -games 2 `
    -repeat `
    -resultformat wide2 `
    -ratinginterval 20 `
    -rounds 300 `
    -concurrency 6 `
    -sprt elo0=0 elo1=5 alpha=0.05 beta=0.05 `
    -pgnout "$PSScriptRoot/out.pgn" `
    -openings file="$PSScriptRoot/UHO_XXL_+1.00_+1.29.epd" format=epd order=random policy=round
