---
repository: "https://github.com/turbot/flowpipe-mod-ip2location"
---

# Flowpipe IP2Location Mod

Run pipelines and use triggers for IP2Location resources.

## References

[ip2location.io](https://www.ip2location.io/) is an API for IP address information (e.g. location) or WHOIS data (domain registration info).

[Flowpipe](https://flowpipe.io) is an open source workflow tool.

[Flowpipe Mods](https://flowpipe.io/docs/reference/mod-resources#mod) are collections of `pipelines` and `triggers`.

## Documentation

- **[Pipelines →](https://hub.flowpipe.io/mods/turbot/ip2location/pipelines)**
- **[Triggers →](https://hub.flowpipe.io/mods/turbot/ip2location/triggers)**

## Getting started

### Installation

Download and install Flowpipe (https://flowpipe.io/downloads). Or use Brew:

```sh
brew tap turbot/tap
brew install flowpipe
```

Clone:

```sh
git clone https://github.com/turbot/flowpipe-mod-ip2location.git
cd flowpipe-mod-ip2location
```

### Usage

Start your server to get started:

```sh
flowpipe service start
```

Run a pipeline:

```sh
flowpipe pipeline run get_ip
```

### Credentials

This mod uses the credentials configured in `flowpipe.pvars` or passed through `--pipeline-args api_key`.

### Configuration

Pipelines have [input variables](https://flowpipe.io/docs/using-flowpipe/mod-variables) that can be configured to better match your environment and requirements. Some variables have defaults defined in its source file, e.g., `variables.hcl`, but these can be overwritten in several ways:

- Copy and rename the `flowpipe.pvars.example` file to `flowpipe.pvars`, and then modify the variable values inside that file
- Pass in a value on the command line:

  ```shell
  flowpipe pipeline run post_message --pipeline-arg api_key="12345678901A23BC4D5E6FG78HI9J101"
  ```

These are only some of the ways you can set variables. For a full list, please see [Passing Input Variables](https://flowpipe.io/docs/using-flowpipe/mod-variables#passing-input-variables).

## Contributing

If you have an idea for additional controls or just want to help maintain and extend this mod ([or others](https://github.com/topics/flowpipe-mod)) we would love you to join the community and start contributing.

- **[Join our Slack community →](https://flowpipe.io/community/join)** and hang out with other Mod developers.

Please see the [contribution guidelines](https://github.com/turbot/flowpipe/blob/main/CONTRIBUTING.md) and our [code of conduct](https://github.com/turbot/flowpipe/blob/main/CODE_OF_CONDUCT.md). All contributions are subject to the [Apache 2.0 open source license](https://github.com/turbot/flowpipe-mod-ip2location/blob/main/LICENSE).

Want to help but not sure where to start? Pick up one of the `help wanted` issues:

- [Flowpipe](https://github.com/turbot/flowpipe/labels/help%20wanted)
- [IP2Location Mod](https://github.com/turbot/flowpipe-mod-ip2location/labels/help%20wanted)
