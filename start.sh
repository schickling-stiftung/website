#! /bin/sh

killall ruby
rm -rf output
guard &
nanoc view &
