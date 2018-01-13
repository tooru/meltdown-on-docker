# Run meltdown demos on Docker

Run meltdwon demos (https://github.com/IAIK/meltdown) on docker.

1. build image.

```
$ docker build -f alpine-meltdown.dockerfile -t alpine-meltdown .
```

2. run meltdown demos.

```
$ run.sh
```

## What is meltdown?

Meltdown (CVE-2017-5754) is a hardware vulnerability affecting mordern cpu.

See https://meltdown.help/
