# Busybox v1.36.x
Configuration only.

## Purpose

Compared to the Busybox officially provided by Alpine Linux, remove commands that cannot be used (or useless) in WSL(Version 1) and make adaptive changes to the WSL(Version 1) environment.

Please compare with the official Alpine Linux [configuration file](https://git.alpinelinux.org/aports/plain/main/busybox/busyboxconfig) to see the specific changes.

## Usage

1. Download the Busybox source code from [here](https://www.busybox.net/downloads/) (note the version).

2. Patch the source code with [official patches](https://git.alpinelinux.org/aports/tree/main/busybox) from Alpine Linux. (There is a [patch script](patches/patch-dl.sh) `patches/patch-dl.sh` available, but please note that it should not be executed directly. It is recommended to manually execute after understanding each step of the operation.)

3. Install dependencies in the `dep.list` on an Alpine Linux OS.

4. Place the configuration file `.config` corresponding to the branch of Busybox version in the source code root directory.

5. Execute `make` command.

## Contribution

Any kind of contribution is welcome. Especially if you find that some commands can't be executed on WSL(Version 1) but I haven't deleted them, or if you think some commands should not be deleted and can be executed on WSL(Version 1) after testing.