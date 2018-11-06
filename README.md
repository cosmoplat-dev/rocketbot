<p align="center"><img src="document/assets/logo.png"  width="250"></p>
<h1 align="center"></h1>

<p align="center">
<a><img src="https://img.shields.io/badge/version-0.9.0-blue.svg?longCache=true&style=popout-square"></a>
<a href="https://github.com/cosmoplat-dev/rocketbot/blob/master/LICENSE"><img src="https://img.shields.io/badge/license-MIT-brightgreen.svg?longCache=true&style=popout-square"></a>
<a href="https://github.com/cosmoplat-dev/rocketbot/blob/master/LICENSE"><img src="https://img.shields.io/badge/support by-COSMOPlat-DEV Lab-brightgreen.svg?longCache=true&style=popout-square"></a>
<a><img src="https://img.shields.io/badge/base-Skywalking-red.svg?longCache=true&style=popout-square"></a>
</p>

## Introduction
RocketBot is an MIT-licensed open source project. 
It‘s UI for [Apache SkyWalking](https://github.com/apache/incubator-skywalking). This project is supported By [COSMOPlat-DEV Labs](https://github.com/COSMOPlat-DEV-Labs).

![](document/assets/demo1.png)

![](document/assets/demo2.png)

![](document/assets/demo3.png)

**[Demo](http://106.75.216.40:8080/)**

**[Docs](https://github.com/cosmoplat-dev/rocketbot/blob/master/Document.md
)**

## Development

 The app was built with [vue + typescript](https://github.com/vuejs/vue).

### Getting codes

Fork, then clone the `rocketbot` repo and change directory into it.

```
git clone https://github.com/cosmoplat-dev/rocketbot.git
cd rocketbot
```

Install dependencies via `npm`:

```
npm install
```

### Running the application


The default collector query address is `http://localhost:8080`.

#### Commands

| Command                 | Description                                                 |
| ----------------------- | ----------------------------------------------------------- |
| `npm start`             | Starts development server with hot reloading.      |
| `npm run host` | Starts development servers other can link             |
| `npm run lint`          | Lint the project (tslint)                        |
| `npm run build`         | Runs production build. Outputs files to `/dist`.            |

## Build

Running build will output all the static files to the `./dist` folder:

```
npm install
npm run build
```

[ci-img]: https://travis-ci.org/apache/incubator-skywalking-ui.svg?branch=master
[ci]: https://travis-ci.org/apache/incubator-skywalking-ui
[gitter-img]: https://badges.gitter.im/openskywalking/Lobby.svg
[gitter]: https://gitter.im/openskywalking/Lobby

## Docker Image Build


```
npm install

npm run build

docker build -t rocketbot .
```
### Running the docker image

```
docker run -p 8080:80 -d -e SKYWALKING_URL=127.0.0.1:1234,127.0.0.1:1235 rocketbot
```

`SKYWALKING_URL` is the address of your backend, multiple IP is changed by comma.


The default frontend address is `http://localhost:8080`.

## Nginx config

### Reserve proxy

```
  location /api {
    rewrite ^/(.*) /graphql break;
    proxy_pass SKYWALKING_URL;
  }
```

**Important**: If you want to deploy the application by yourself，**you need to rewirte the URL path into ```/graphql``` before reserve proxy**.

## Contributing to RocketBot

Firstly, thanks for your interest in contributing! I hope that this will be a
pleasant first experience for you, and that you will return to continue
contributing.

### How to contribute?

Most of the contributions that we receive are code contributions, but you can
also contribute to the documentation or simply report solid bugs
for us to fix.

### How to report a bug?

* **Ensure the bug was not already reported** by searching on GitHub under [Issues](https://github.com/cosmoplat-dev/rocketbot/issues).

* If you're unable to find an open issue addressing the problem, [open a new one](https://github.com/cosmoplat-dev/rocketbot/issues/new). Be sure to include a **title and clear description**, as much relevant information as possible, and a **code sample** or an **executable test case** demonstrating the expected behavior that is not occurring.


## License

Copyright © 2018, [COSMOPlat-DEV](https://github.com/cosmoplat-dev). Released under the [MIT](http://opensource.org/licenses/MIT) License.

