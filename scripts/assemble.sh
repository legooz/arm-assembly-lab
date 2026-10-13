#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
mkdir -p build
for source in exercises/*.s historical/*.s; do
  arm-none-eabi-as -mcpu=cortex-a9 -o "build/$(basename "$source").o" "$source"
done
printf 'All seven historical sources assembled. Linking and runtime correctness are not verified.\n'
