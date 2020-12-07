# EXAMPLE

    docker run --env GIT_BASE_URL="https://git.example.com/" -it --rm --volume "`pwd`:/data" --user `id -u`:`id -g` debreczeniandras/markdown-renderer:latest docs/README.md
