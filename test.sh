#!/usr/bin/env sh

dir=$1;

output=$($dir/hello.out);
status=$?;
if test $status != 0; then
    echo "$dir/hello.out: exit status: $status" >/dev/stderr;
fi;

if test "$output" != "hello, world"; then
    echo "$dir/hello.out: output was: $output" >/dev/stderr;
    status=1
fi;

exit $status;
