# xxtools
Collection of tools to ease package maintenance for Void Linux even more than
xtools does.

## Examples
### Bump all packages you maintain automatically and build them
Assuming a clean git tree.

```
# bump my maintained packages
mypkgs="$(xmypkgs)"
xxautobump $mypkgs
# build changed templates
pkgs="$(git status --porcelain | grep -E "^ M .*srcpkgs/.*/template$" | cut -d' ' -f3)"
xbulk -t $(./xbps-src sort-dependencies $pkgs)
```

## References
* https://github.com/void-linux/void-packages
* https://github.com/leahneukirchen/xtools
