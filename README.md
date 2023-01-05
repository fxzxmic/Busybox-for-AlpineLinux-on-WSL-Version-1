![busybox](https://www.busybox.net/images/busybox1.png "Busybox")
![Alpine Linux](https://avatars.githubusercontent.com/u/7600810?s=200&v=4 "Alpine Linux")

# **Busybox for Alpine Linux**
This is a repository of [Busybox](https://www.busybox.net/) for [Alpine Linux](https://www.alpinelinux.org/) on [WSL(Version 1)](https://learn.microsoft.com/en-us/windows/wsl/compare-versions#comparing-wsl-1-and-wsl-2). Configuration only.

## Purpose

Compared to the Busybox officially provided by Alpine Linux, remove commands that cannot be used (or useless) in WSL(Version 1) and make adaptive changes to the WSL(Version 1) environment.

Please compare with the official Alpine Linux [configuration file](https://git.alpinelinux.org/aports/plain/main/busybox/busyboxconfig) to see the specific changes.

## Usage

1. Download the Busybox source code from [here](https://www.busybox.net/downloads/) (note the version).

2. Patch the source code with [official patches](https://git.alpinelinux.org/aports/tree/main/busybox) from Alpine Linux.

3. Install dependencies in the `dep.list` on an Alpine Linux system.

4. Place the configuration file `.config` in the source code root directory.

5. Execute `make` command.

## Contribution

Any kind of contribution is welcome. Especially if you find that some commands can't be executed on WSL(Version 1) but I haven't deleted them, or if you think some commands should not be deleted and can be executed on WSL(Version 1) after testing.