# docker-libdmg
Docker image with [libdmg-hfsplus](https://github.com/planetbeing/libdmg-hfsplus) utilities to manipulate HFS+ volumes and Apple's DMG images.

## Usage:
```
docker run --rm -v `pwd`:/files sporsh/libdmg dmg /files/uncompressed.dmg /files/compressed.dmg
```
