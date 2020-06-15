docker run --rm -it --mount type=bind,source="$(pwd)/GestSIS_APP",target=/app -p 8080:8080 node:lts-alpine sh
    cd app
    yarn install
    yarn serve
