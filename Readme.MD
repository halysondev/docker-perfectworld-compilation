
# PWSource Compilation Docker Guide

## Building the Image

Choose between two tags: `bullseye` for a specific Debian version, or `latest` for the most current version. Open a terminal and execute one of the following commands:

For `bullseye` version:

```bash
docker build --no-cache -t pwsourcedev:bullseye -f Dockerfile.bullseye .
```

For the latest version:

```bash
docker build --no-cache -t pwsourcedev:latest .
```

## Running the Container on Windows (PowerShell 7)

Replace `GIT_TOKEN`, `GIT_EMAIL`, `GIT_NAME`, `GIT_URL`, and `BRANCH` with your Git configuration details before running the command:

```powershell
docker run -it -d `
    --name pwdev `
    -e GIT_TOKEN='YOUR_GIT_TOKEN' `
    -e GIT_EMAIL='YOUR_GIT_EMAIL' `
    -e GIT_NAME='YOUR_GIT_NAME' `
    -e GIT_REPO_URL='YOUR_GIT_REPO_URL' `
    -e GIT_BRANCH='YOUR_GIT_BRANCH' `
    -p 22:22 -p 1500:1500 -p 29000:29000 `
    -v pwdev-source:/PWSource `
    -v pwdev-server:/PWServer `
    pwsourcedev:bullseye
```

```bash
docker run -it -d \
    --name pwdev \
    -e GIT_TOKEN='YOUR_GIT_TOKEN' \
    -e GIT_EMAIL='YOUR_GIT_EMAIL' \
    -e GIT_NAME='YOUR_GIT_NAME' \
    -e GIT_REPO_URL='YOUR_GIT_REPO_URL' \
    -e GIT_BRANCH='YOUR_GIT_BRANCH' \
    -p 22:22 -p 1500:1500 -p 29000:29000 \
    -v pwdev-source:/PWSource \
    -v pwdev-server:/PWServer \
    pwsourcedev:bullseye
```

### Parameters Explained:

- `--name pwdev`: Sets the container name to `pwdev`.
- `-e GIT_TOKEN` etc.: Sets environment variables for Git configuration.
- `-p 22:22 -p 1500:1500 -p 29000:29000`: Maps necessary ports from the container to your host.
- `-v pwdev-source:/PWSource` and `-v pwdev-server:/PWServer`: Creates persistent volumes for source code and server data.

## Credits

- Configuration prepared by Haly.

## Notes:

- Docker must be installed and running on your system.
- Adjust the volume paths as necessary to fit your system's needs.
