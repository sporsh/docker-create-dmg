# docker-create-dmg
Docker container to create compressed DMGs of a folder.

Uses genisoimage and [libdmg-hfsplus](https://github.com/planetbeing/libdmg-hfsplus) utilities to create and compress Apple DMG images.

## Usage:
```
docker run --rm -v `pwd`:/files sporsh/create-dmg "Volume Name" /files/source-directory/ /files/compressed-volume-name.dmg
```
