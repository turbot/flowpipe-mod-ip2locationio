## v1.0.0 (2024-10-22)

_Breaking changes_

- Flowpipe `v1.0.0` is now required. For a full list of CLI changes, please see the [Flowpipe v1.0.0 CHANGELOG](https://flowpipe.io/changelog/flowpipe-cli-v1-0-0).
- In Flowpipe configuration files (`.fpc`), `credential` and `credential_import` resources have been renamed to `connection` and `connection_import` respectively.
- Renamed all `cred` params to `conn` and updated their types from `string` to `conn`.

_Enhancements_

- Added `library` to the mod's categories.
- Updated the following pipeline tags:
  - `type = "featured"` to `recommended = "true"`
  - `type = "test"` to `folder = "Tests"`

## v0.2 [2024-01-10]

_Bug fixes_

- Updated the connection section of README to use `api_key` instead of `token`. ([#7](https://github.com/turbot/flowpipe-mod-ip2locationio/pull/7))

## v0.1.0 [2023-12-14]

_What's new?_

- Added 2+ pipelines to make it easy to connect your IP and Whois info and more. For usage information and a full list of pipelines, please see [IP2Location.io Mod for Flowpipe](https://hub.flowpipe.io/mods/turbot/ip2locationio).
