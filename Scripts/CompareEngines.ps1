fast-chess `
    -engine name="MyBot" cmd="$PSScriptRoot/../Chess-Challenge/bin/Release/net6.0/Chess-Challenge.exe" args="uci MyBot" `
    -engine name="MyBotv63" cmd="$PSScriptRoot/../Chess-Challenge/bin/Release/net6.0/Chess-Challenge.exe" args="uci MyBotv63" `
    -each tc=10+0 `
    -draw movecount=2000 `
    -games 2 `
    -repeat `
    -output format=cutechess `
    -rounds 1000 `
    -concurrency 10 `
    -pgnout notation=san file=out.pgn `
    -sprt elo0=0 elo1=5 alpha=0.05 beta=0.05 `
    -openings file="$PSScriptRoot/UHO_XXL_+1.00_+1.29.epd" format=epd order=random
