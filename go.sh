
#! /bin/bash
ABSPATH=$(cd "$(dirname "$0")"; pwd)
echo $ABSPATH
echo $(dirname $@)
$ABSPATH/bin/protoc --plugin=$ABSPATH/bin/protoc-gen-dart --dart_out=$(dirname $@) --proto_path=$(dirname $@) "$@"