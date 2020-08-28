# void-linux-liquorix

Liquorix [website](https://github.com/damentz/liquorix-package)

Liquorix [repository](https://github.com/damentz/liquorix-package)

Void packages [repository](https://github.com/DBLouis/void-packages) (fork)

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
