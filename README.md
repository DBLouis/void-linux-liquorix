# void-linux-liquorix

Liquorix [website](https://github.com/damentz/liquorix-package)

Liquorix [repository](https://github.com/damentz/liquorix-package)

Void packages [repository](https://github.com/DBLouis/void-packages) (fork)

## How to use this repository

Add the following line in your XBPS configuration (e.g. `/etc/xbps.d/10-liquorix.conf`).

```
repository=https://dblouis.github.io/void-linux-liquorix/<arch>
```

Where `<arch>` is your CPU architecture (put `generic` if your are not sure).

## How to build *linux-lqx\** packages

First clone the `void-packages` fork repository and install bootstrap packages.

```
git clone --branch liquorix https://github.com/DBLouis/void-packages.git
cd void-packages
./xbps-src binary-bootstrap
```

Optionally edit the kernel configuration.

```
./xbps-src configure linux-lqx
./xbps-src chroot
cd builddir/linux-*
make nconfig
```

Then run the build.

```
./xbps-src [-j jobs] pkg linux-lqx
```
