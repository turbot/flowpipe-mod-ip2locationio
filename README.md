# ip2location.io Mod for Flowpipe

ip2location.io pipeline library for [Flowpipe](https://flowpipe.io) enabling seamless integration of ip2location.io services into your workflows.

## Documentation

- **[Pipelines →](https://hub.flowpipe.io/mods/turbot/ip2locationio/pipelines)**

## Getting started

### Installation

Download and install Flowpipe (https://flowpipe.io/downloads). Or use Brew:

```sh
brew tap turbot/tap
brew install flowpipe
```

### Connections

By default, the following environment variables will be used for authentication:

- `IP2LOCATIONIO_API_KEY`

You can also create `connection` resources in configuration files:

```sh
vi ~/.flowpipe/config/ip2locationio.fpc
```

```hcl
connection "ip2locationio" "my_ip2locationio" {
  api_key = "00B6a...."
}
```

For more information on connections in Flowpipe, please see [Managing Connections](https://flowpipe.io/docs/run/connections).

### Usage

[Initialize a mod](https://www.flowpipe.io/docs/mods/index#initializing-a-mod):

```sh
mkdir my_mod
cd my_mod
flowpipe mod init
```

[Install the ip2location.io mod](https://www.flowpipe.io/docs/mods/mod-dependencies#mod-dependencies) as a dependency:

```sh
flowpipe mod install github.com/turbot/flowpipe-mod-ip2locationio
```

[Use the dependency](https://www.flowpipe.io/docs/mods/write-pipelines/index) in a pipeline step:

```sh
vi my_pipeline.fp
```

```hcl
pipeline "my_pipeline" {

  step "pipeline" "get_ip_info" {
    pipeline = ip2locationio.pipeline.get_ip_info
    args = {
      ip_address = "76.76.21.21"
    }
  }
}
```

[Run the pipeline](https://www.flowpipe.io/docs/run/pipelines):

```sh
flowpipe pipeline run my_pipeline
```

### Developing

Clone:

```sh
git clone https://github.com/turbot/flowpipe-mod-ip2locationio.git
cd flowpipe-mod-ip2locationio
```

List pipelines:

```sh
flowpipe pipeline list
```

Run a pipeline:

```sh
flowpipe pipeline run get_ip_info --arg ip_address='76.76.21.21'
```

To use a specific `connection`, specify the `conn` pipeline argument:

```sh
flowpipe pipeline run get_ip_info --arg conn=connection.ip2locationio.my_ip2locationio --arg ip_address='76.76.21.21'
```

## Open Source & Contributing

This repository is published under the [Apache 2.0 license](https://www.apache.org/licenses/LICENSE-2.0). Please see our [code of conduct](https://github.com/turbot/.github/blob/main/CODE_OF_CONDUCT.md). We look forward to collaborating with you!

[Flowpipe](https://flowpipe.io) is a product produced from this open source software, exclusively by [Turbot HQ, Inc](https://turbot.com). It is distributed under our commercial terms. Others are allowed to make their own distribution of the software, but cannot use any of the Turbot trademarks, cloud services, etc. You can learn more in our [Open Source FAQ](https://turbot.com/open-source).

## Get Involved

**[Join #flowpipe on Slack →](https://flowpipe.io/community/join)**

Want to help but not sure where to start? Pick up one of the `help wanted` issues:

- [Flowpipe](https://github.com/turbot/flowpipe/labels/help%20wanted)
- [ip2location.io Mod](https://github.com/turbot/flowpipe-mod-ip2locationio/labels/help%20wanted)
