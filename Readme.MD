<br/>
<p align="center">
  <a href="https://github.com/halysondev/docker-perfectworld-compilation">
    <img src="https://avatars.githubusercontent.com/u/5429470?s=280&v=4" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Docker Perfect World Compilation</h3>

  <p align="center">
    A definitive guide for compiling Perfect World server using Docker.
    <br/>
    <br/>
    <a href="https://github.com/halysondev/docker-perfectworld-compilation"><strong>Explore the docs »</strong></a>
    <br/>
    <br/>
    <a href="https://github.com/halysondev/docker-perfectworld-compilation">View Demo</a>
    .
    <a href="https://github.com/halysondev/docker-perfectworld-compilation/issues">Report Bug</a>
    .
    <a href="https://github.com/halysondev/docker-perfectworld-compilation/issues">Request Feature</a>
  </p>
</p>

![Contributors](https://img.shields.io/github/contributors/halysondev/docker-perfectworld-compilation?color=dark-green) ![Issues](https://img.shields.io/github/issues/halysondev/docker-perfectworld-compilation) 

## Table Of Contents

* [About the Project](#about-the-project)
* [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Authors](#authors)
* [Acknowledgements](#acknowledgements)

## About The Project

![Screen Shot](https://i.gyazo.com/de4accd4fec9059535ef58c43de8a0d5.png)

The Docker Perfect World Compilation project aims to simplify the process of setting up a Perfect World server by using Docker. This method ensures a consistent and isolated environment, minimizing the typical technical challenges and speeding up the setup process.

Key benefits include:

* Simplification of the setup process for Perfect World servers.
* Consistent compilation and execution environment across different systems.
* Reduction of common setup errors and compatibility issues.

This project is open for contributions and suggestions. Feel free to contribute, suggest features, or report bugs.

## Built With

* [Docker](https://docker.com/) - For creating isolated environments.
* [Perfect World](#) - The game server software.

## Getting Started

To get your Perfect World server up and running with Docker, follow these steps.

### Prerequisites

* Docker installed on your machine. [Get Docker](https://docs.docker.com/get-docker/).

### Installation

1. Clone the Docker Perfect World Compilation repo:

```sh
git clone https://github.com/halysondev/docker-perfectworld-compilation.git
```

2. Build the Docker image:
- If you want, you can change the Debian version between latest and bullseye changing 
```
pwsourcedev:latest
```
to 
```
pwsourcedev:bullseye
```

```sh
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
    pwsourcedev:latest 
```
## Running the Container on Linux

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
    pwsourcedev:latest 
```


## Usage

For detailed usage instructions, including how to customize your server settings, visit our [documentation](https://github.com/halysondev/docker-perfectworld-compilation).

## Roadmap

See the [open issues](https://github.com/halysondev/docker-perfectworld-compilation/issues) for a list of proposed features (and known issues).

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.
* If you have suggestions for adding or removing projects, feel free to [open an issue](https://github.com/halysondev/docker-perfectworld-compilation/issues/new) to discuss it, or directly create a pull request after you edit the *README.md* file with necessary changes.
* Please make sure you check your spelling and grammar.
* Create individual PR for each suggestion.
* Please also read through the [Code Of Conduct](https://github.com/halysondev/docker-perfectworld-compilation/blob/main/CODE_OF_CONDUCT.md) before posting your first idea as well.

### Creating A Pull Request

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See [LICENSE](https://github.com/halysondev/docker-perfectworld-compilation/blob/main/LICENSE.md) for more information.

## Authors

* **Halyson Cesar** - *Author* - [Halyson Cesar](https://github.com/halysondev) - *Initial work*

## Acknowledgements

* [Docker](https://docker.com/)
* [Perfect World](#)
* [ImgShields](https://shields.io/)
