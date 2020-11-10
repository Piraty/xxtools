# xxtools
Collection of tools to ease package maintenance for Void Linux even more than
xtools does.

## tools

* `xxadopt [-f] PKG..` - adopt packages
* `xxautobump PKG..` - perform trivial updates on given templates
* `xxbuild [flags] [pkgs..]` - build packages for a pre-defined set of archs

## Examples
### Bump all packages you maintain automatically and build them
Assuming a clean git tree.

```
mypkgs="$(xmypkgs)"

# bump my maintained packages that have pending updates
bumped="$(xxautobump $mypkgs)"

# build only packages that were bumped, for all supported architectures
xxbuild $bumped
```

## References
* https://github.com/void-linux/void-packages
* https://github.com/leahneukirchen/xtools
