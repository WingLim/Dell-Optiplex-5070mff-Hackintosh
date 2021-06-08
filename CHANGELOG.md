
<a name="v1.6.0"></a>
## [v1.6.0](https://github.com/WingLim/Dell-Optiplex-5070mff-Hackintosh/compare/v1.5.0...v1.6.0) (2021-06-08)

### Added

* update OpenCore `v0.7.0`

<a name="v1.5.0"></a>
## [v1.5.0](https://github.com/WingLim/Dell-Optiplex-5070mff-Hackintosh/compare/v1.4.0...v1.5.0) (2021-05-20)

### Changed

* Use brew to install MicFix

<a name="v1.4.0"></a>
## [v1.4.0](https://github.com/WingLim/Dell-Optiplex-5070mff-Hackintosh/compare/v1.3.1...v1.4.0) (2021-05-17)

### Added

* Update MicFix 1.1.1

<a name="v1.3.1"></a>
## [v1.3.1](https://github.com/WingLim/Dell-Optiplex-5070mff-Hackintosh/compare/v1.3.0...v1.3.1) (2021-05-17)

### Bug Fixes

* hevc with iGPU [#4](https://github.com/WingLim/Dell-Optiplex-5070mff-Hackintosh/issues/4)

<a name="v1.3.0"></a>
## [v1.3.0](https://github.com/WingLim/Dell-Optiplex-5070mff-Hackintosh/compare/v1.2.1...v1.3.0) (2021-05-16)

### Added

- Add `alcverbs=1` to enable execute hda-verb command

### Changed

- Change ComboJack to MicFix for auto fix micphone

### Removed

- Remove VerbStub


<a name="v1.2.1"></a>
## [v1.2.1](https://github.com/WingLim/Dell-Optiplex-5070mff-Hackintosh/compare/v1.2.0...v1.2.1) (2021-05-13)

### Changed

- Disable debug log


<a name="v1.2.0"></a>
## [v1.2.0](https://github.com/WingLim/Dell-Optiplex-5070mff-Hackintosh/compare/v1.1.0...v1.2.0) (2021-05-13)

### Added

- Use ComboJack for HeadSet micphone
- Add `SSDT-HPET.aml`
- Add `SSDT-USBX.aml`

### Removed

- Remove `SSDT-SBUS-MCHC.aml`


<a name="v1.1.0"></a>
## [v1.1.0](https://github.com/WingLim/Dell-Optiplex-5070mff-Hackintosh/compare/v1.0.0...v1.1.0) (2021-05-13)

### Added

- Update `Lilu` v1.5.3
- Update `AppleALC` v1.6.0
- Update `WhateverGreen` v1.4.9
- Update `VirtualSMC` v1.2.3
- Update `BrcmPatchRAM` v2.5.8
- Update `IntelMausi` v1.0.6
- Update `NVMeFix` v1.0.7

### Removed

- Remove Audio fake device-id


<a name="v1.0.0"></a>
## v1.0.0 (2021-03-15)

### Added

- Update `OpenCore` v0.6.7
- Update `AppleALC` v1.5.8
- Update `WhateverGreen` v1.4.8
- Update `VirtualSMC` v1.2.1
- Update `BrcmPatchRAM` v2.5.7

### Changed

- Set false to `AppleXcpmCfgLock`
- Set false to `DisableIoMapper`
- Set false to `EnableWriteUnprotector`
- Set false to `ProtectUefiServices`
- Set ture to `RebuildAppleMemoryMap`

