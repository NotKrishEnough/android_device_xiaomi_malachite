# Evolution X bring-up — malachite

Experimental Evolution X Android 16 QPR2 (`bka`) bring-up for the Redmi Note 14 Pro 5G / POCO X7 5G (`malachite`).

## Status

- [x] Create the `evolution-x/bka` working branch from `lineage-23.2`.
- [x] Switch the product makefile to Evolution X common product configuration.
- [x] Add a local manifest template for the device tree, prebuilt kernel/DTB repository, and proprietary vendor repository.
- [ ] Sync the complete Evolution X `bka` source tree.
- [ ] Run build-system checks and fix compile errors.
- [ ] Produce and test a bootable build on the actual device.

This is an early bring-up, not a tested ROM. Do not flash images until the build succeeds and the images have been checked for the correct device and partition layout. Back up important data first.

## Source setup

Use the Evolution X Android 16 QPR2 manifest:

```bash
repo init -u https://github.com/Evolution-X/manifest -b bka --git-lfs
```

Copy [`bringup/local_manifests/malachite.xml`](bringup/local_manifests/malachite.xml) into `$ANDROID_BUILD_TOP/.repo/local_manifests/malachite.xml` (create the `local_manifests` directory if needed), then sync:

```bash
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
```

## Build attempt

```bash
. build/envsetup.sh
lunch lineage_malachite-bp4a-userdebug
m evolution
```

The lunch target follows the naming pattern documented by the Evolution X `bka` manifest. If the product is not listed, inspect `AndroidProducts.mk` and the product makefile before changing target names.

## Bring-up checks still required

1. Confirm the target device/product identity and the regional firmware base.
2. Validate all proprietary blobs and dependency branches against Android 16 QPR2.
3. Review kernel image, DTBs, modules and vendor boot compatibility.
4. Resolve build errors and SELinux denials from real logs.
5. Test boot, display/touch, radios, audio, cameras, fingerprint, encryption and OTA before calling it usable.
