# IP2Location Library Mod for Flowpipe

A collection of [Flowpipe](https://flowpipe.io) pipelines that can be used to:

- Get IP location details
- Get WHOIS information for domains
- And more!

![image](https://github.com/turbot/flowpipe-mod-ip2location/blob/main/docs/images/flowpipe_pipeline_run.png?raw=true)

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

### Configuration

Configure your credentials:

```sh
cp flowpipe.pvars.example flowpipe.pvars
vi flowpipe.pvars
```

It's recommended to configure credentials through [input variables](https://flowpipe.io/docs/using-flowpipe/mod-variables) by setting them in the `flowpipe.pvars` file.

**Note:** Credentials can also be passed in each pipeline run with `--pipeline-args api_key=12345678901A23BC4D5E6FG78HI9J101`.

Additional input variables may be defined in the mod's `variables.hcl` file that can be configured to better match your environment and requirements.

Variables with defaults set do not need to be explicitly set, but it may be helpful to override them.

### Usage

Start the Flowpipe server to get started:

```sh
flowpipe service start
```

Run a pipeline:

```sh
flowpipe pipeline run get_ip --pipeline-arg ip_address='76.76.21.21'
```

## Passing pipeline arguments

To pass values into pipeline [parameters](https://flowpipe.io/docs/using-flowpipe/pipeline-parameters), use the following syntax:

```sh
flowpipe pipeline run get_ip --pipeline-arg ip_address='76.76.21.21'
```

Multiple pipeline args can be passed in with separate `--pipeline-arg` flags.

For more information on passing arguments, please see [Pipeline Args](https://flowpipe.io/docs/using-flowpipe/pipeline-arguments).

## Contributing

If you have an idea for additional controls or just want to help maintain and extend this mod ([or others](https://github.com/topics/flowpipe-mod)) we would love you to join the community and start contributing.

- **[Join #flowpipe in our Slack community ](https://flowpipe.io/community/join)**

Please see the [contribution guidelines](https://github.com/turbot/flowpipe/blob/main/CONTRIBUTING.md) and our [code of conduct](https://github.com/turbot/flowpipe/blob/main/CODE_OF_CONDUCT.md).

Want to help but not sure where to start? Pick up one of the `help wanted` issues:

- [Flowpipe](https://github.com/turbot/flowpipe/labels/help%20wanted)
- [IP2Location Library Mod](https://github.com/turbot/flowpipe-mod-ip2location/labels/help%20wanted)

## License

This mod is licensed under the [Apache License 2.0](https://github.com/turbot/flowpipe-mod-ip2location/blob/main/LICENSE).

Flowpipe is licensed under the [AGPLv3](https://github.com/turbot/flowpipe/blob/main/LICENSE).
