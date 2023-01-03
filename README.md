![busybox](https://www.busybox.net/images/busybox1.png "Busybox Icon")

# **[Busybox](https://www.busybox.net/)**
This is a repository of Busybox for Alpine Linux on WSL(Version 1). Configuration only (no [official patches](https://git.alpinelinux.org/aports/tree/main/busybox) from Alpine Linux).

## Purpose

Compared to the Busybox officially provided by Alpine Linux, remove commands that cannot be used (or useless) in WSL(Version 1) and make adaptive changes to the WSL(Version 1) environment.

Please compare with the official Alpine Linux [configuration file](https://git.alpinelinux.org/aports/plain/main/busybox/busyboxconfig) to see the specific changes.

## Usage

1. Download the Busybox source code from [here](https://www.busybox.net/downloads/).

2. Install dependencies in the `dep.list`.

3. Place the configuration file `.config` in the source code root directory.

4. Execute `make` on the terminal.

## Contribution

Any kind of contribution is welcome.