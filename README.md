# mycli-docker

A Dockerfile for [mycli][].

## TOC

<!-- MarkdownTOC GFM -->

- [Usage](#usage)
- [Image Size](#image-size)
- [Developing](#developing)
- [Suggestion, Bug Reporting, Contributing](#suggestion-bug-reporting-contributing)
- [Versioning](#versioning)
- [Copyright and License](#copyright-and-license)

<!-- /MarkdownTOC -->

## Usage

I have built an docker image in https://cloud.docker.com/u/adoyle/repository/docker/adoyle/mycli .
You can use it directly, or build image by yourself (See [Developing](#developing)).

```sh
docker pull adoyle/mycli:1.19.0
docker run --net=host --rm -it adoyle/mycli:1.19.0 -h "$HOST" -P "$PORT" -p "$PASSWORD" -u "$USER" "$DB"
# or invoke the "run" script
./run -h "$HOST" -P "$PORT" -p "$PASSWORD" -u "$USER" "$DB"
```

## Image Size

```
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
adoyle/mycli        1.19.0              2773b149a270        10 minutes ago      104MB
python              3.7.3-alpine3.9     fe3ef29c73f3        6 weeks ago         87MB
```

The adoyle/mycli is based on python:3.7.3-alpine3.9 image. The mycli layer only uses 17MB.

## Developing

```sh
# build image
./build

# run container
./run -h "$HOST" -P "$PORT" -p "$PASSWORD" -u "$USER" "$DB"
```

To build different version of mycli.

```sh
VERSION=1.19.0 ./build
VERSION=1.19.0 ./run -h "$HOST" -P "$PORT" -p "$PASSWORD" -u "$USER" "$DB"
```

## Suggestion, Bug Reporting, Contributing

Any suggestions and contributions are always welcome. Please open an [issue][] to talk with me.

## Versioning

The versioning follows the rules of SemVer 2.0.0.

**Attentions**: anything may have **BREAKING CHANGES** at **ANY TIME** when major version is zero (0.y.z), which is for initial development and the public API should be considered unstable.

For more information on SemVer, please visit http://semver.org/.

## Copyright and License

Copyright (c) 2019 ADoyle <adoyle.h@gmail.com>. The project is licensed under the **Apache License Version 2.0**.

See the [LICENSE][] file for the specific language governing permissions and limitations under the License.

See the [NOTICE][] file distributed with this work for additional information regarding copyright ownership.


<!-- Links -->

[LICENSE]: ./LICENSE
[NOTICE]: ./NOTICE
[issue]: https://github.com/adoyle-h/mycli-docker/issues
[mycli]: https://github.com/dbcli/mycli
