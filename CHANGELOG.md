# Changelog

## v0.4.0 - 2021-06-30

### API Changes

* (Renamed) `LockKit.endRental(lockName:onStatusChanged:onResult:)` ->
  `LockKit.prepareEndRental(lockName:onStatusChanged:onResult:)` to clearly
  indicate that the method does not actually end a rental.
* (Removed) `LockError.invalidCommand` which at this time wasn't reported at all.

## v0.3.0 - 2021-06-22

### API Changes

* (Renamed) `LockKit.initializeLock(lockName:eKey:commands:)`
  -> `LockKit.initializeLock(lockName:eKey:passkey:)`. It now takes a single
  string as `passkey`, instead of a list of strings, and manages commands
  parsing internally.
* (Renamed) `LockKit` namespace was removed from the following enums and structs:
  - `ServerEnvironment`
  - `LogLevel`
  - `StatusUpdate`
  - `InitializeSDKError`
  - `InitializeLockError`
  - `FinalizeLockError`
  - `LockError`

## v0.2.0 - 2021-06-11

* Require the first unlock to be performed while online.
* Add `LockKitConfiguration.environment` to select between live and test
  environment.
* Ensure that Donkey Lock Kit storage is properly cleared in the event
  of the host app reinstallation.

## v0.1.3 - 2021-05-31

* Fixed a memory leak occurring when calling lock/unlock/endRental
* Fixed a crash occurring after finalizing the lock

## v0.1.2 - 2021-05-19

* Test release to verify automation pipeline

## v0.1.1 - 2021-05-17

* Add more verbose debug logging


## v0.1.0 - 2021-05-14

* first beta release of the Donkey Lock Kit
