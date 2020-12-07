# DESCRIPTION

Reads the provided .md file, parses it then pipes it to lynx browser.

# USAGE

    docker run --env GIT_BASE_URL="https://git.example.com/" -it --rm --volume "`pwd`:/data" --user `id -u`:`id -g` debreczeniandras/markdown-renderer:latest docs/README.md

