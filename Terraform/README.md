# Terraform Commands

### Basic Commands

Get a list of available commands for execution with descriptions.

```bash
terraform -help
```

Display help options for the `fmt`` command.

```bash
terraform fmtp -help
```

Displays the version of Terraform and all installed plugins.

```bash
terraform version
```

Download and update modules in the "root" module

```bash
terraform get -update=true
```

Setup tab auto-completion

```bash
terraform -install-autocomplete
```

### Initialize Terraform directory

Initialize directory

```bash
terraform init
```

### Format and Validate Terraform code

Format code per HCL canonical standard

```bash
terraform fmt
```

Validate code for syntax

```bash
terraform validate
```

Produce output in a machine-readable JSON format

```bash
terraform validate -json
```

Validate code skip backend validation

```bash
terraform validate -backend=false
```

### Plan, Deploy, and cleanup infrastructure

Show changes required by the current configuration

```bash
terraform plan
```

Create or update infrastructure

```bash
terraform apply
```

Destroy previously-created infrastructure

```bash
terraform destroy
```

Update the state to match remote systems

```bash
terraform refresh
```

Show the providers required for this configuratio

```bash
terraform providers
```

### Terraform state manipulation

Advanced state management

```bash
terraform state
```

List resources in the state

```bash
terraform state list
```

Remove instances from the state

```bash
terraform state rm ITEM-NAME
```

Show a resource in the state

```bash
terraform state show ITEM-NAME
```

### Terrafom Import, and Outputs

Associate existing infrastructure with a Terraform resource

```bash
terraform import
```

Import existing infrastructure into your Terraform state.

```bash
terraform [global options] import [options] ADDR ID
```

Show output values from your root module

```bash
terraform output
```

List all outputs in JSON format

```bash
terraform output -json
```

### Taint

### Workspaces

### Terraform Cloud

### Graph

### Console