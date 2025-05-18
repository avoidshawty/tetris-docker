$env:DISPLAY = "host.docker.internal:0.0"
$dockerImage = "tetris"
docker build -t $dockerImage .

docker run --rm `
    --name $dockerImage `
    -e DISPLAY=$env:DISPLAY `
    -v ${PWD}:/app `
    -w /app `
    $dockerImage `
    python main.py
