# Firmware tree for `rosemary`

## What is this?

A firmware tree to...ship firmware with builds for the
Redmi Note 10S/11 SE and POCO M5S?

# Getting started

First of all, ensure you have cloned this into
`vendor/redmi/rosemary-firmware`.

Manifest:

```xml
<?xml version="1.0" encoding="utf-8"?>
<manifest>
    <remote name="yourremote" revision="eleven" clone-depth="1" />
    <project name="android_vendor_redmi_rosemary-firmware" path="vendor/redmi/rosemary-firmware" remote="yourremote" />
</manifest>
```

Device tree dependencies file:

```
[
  {
    "remote": "yourremote",
    "repository": "android_vendor_redmi_rosemary-firmware",
    "target_path": "vendor/redmi/rosemary-firmware",
    "branch": "eleven",
    "clone_depth": "1"
  }
]
```

Manual cloning:

```bash
git clone <url of this repo> -b eleven vendor/redmi/rosemary-firmware --depth=1 --no-tags --single-branch
```

> These are example entries, you need to replace the relevant stuff
> with your own case.

After that, ensure your tree's BoardConfig inherits this tree's BoardConfigVendor:

```makefile
include vendor/redmi/rosemary-firmware/BoardConfigVendor.mk
```

> These kinds of includes are typically placed along with other
> inherits at the beginning of BoardConfig or at the end of
> BoardConfig, along with other includes if any.

And lastly, build:

```bash
source build/vendorsetup.sh
lunch rom_codename-variant
mka romota
```

> Of course replace `rom_codename-variant` and `romota` with the
> relevant stuff from ROM manifest/guide.

# Additional information for geeks

## Firmware

**ROM**: MIUI

**Version**: 12.5.16.0.RKLMIXM

## Compatibility

**Android version compatibility**:
* All Android 11 ROMs
* Android 12 ROMs based on MIUI 12.5.16.0.RKLMIXM blobs

**Recovery compatibility**:
* All TWRP variants
* OrangeFox for Android 11

**MIUI version compatibility**: Any MIUI version that doesn't increment
ARB index - Anything up to 13.0.8.0.SKLMIXM as of the date of this tree.
(9/24/2022)

**Variant compatibility**:
* `rosemary` (Redmi Note 10S Global, Redmi Note 11 SE, POCO M5S)
* `secret` (Redmi Note 10S India)
* `maltose` (Redmi Note 10S Latin America)
