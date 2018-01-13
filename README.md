# Run meltdown demos on Docker

Run meltdown demos (https://github.com/IAIK/meltdown) on docker.

1. build image.

```
$ docker build -f alpine-meltdown.dockerfile .
```

2. run meltdown demos.

```
$ ./run.sh
```

## What is meltdown?

Meltdown (CVE-2017-5754) is a hardware vulnerability affecting modern cpu.

See https://meltdown.help/ .
