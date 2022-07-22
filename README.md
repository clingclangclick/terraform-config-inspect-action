# terraform-config-inspect-action

The `terraform-config-inspect-action` action is a Docker action that returns results from the [terraform-config-inspect](https://github.com/hashicorp/terraform-config-inspect) command.

## Inputs

The action supports the following inputs:

- `path` - (optional) The path to the module to inspect. Defaults to `.`.
- `query` - (optional) The gojq query to run for results. Defaults to `.`.

## Outputs

This action does not configure any outputs directly. However, when you set the `terraform_wrapper` input
to `true`, the following outputs are available for subsequent steps that call the `terraform` binary.

- `config` - Configuration results
