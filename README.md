# Run meltdown demos on Docker

Run meltdwon demos (https://github.com/IAIK/meltdown) on docker.

* build image

```
$ docker build -f alpine-meltdown.dockerfile -t alpine-meltdown .
```

* run meltdown

```
$ run.sh
```

## What is meltdown?

Meltdown (CVE-2017-5754) is a hardware vulnerability affecting mordern cpu.

See https://meltdown.help/
