# Migrate git repositories

## Actions

1. Clone origin repository
2. Checkout all branches
3. Add destination remote
4. Push all branches with tags to destination
5. Check destination content

## Usage

```bash
scripts/migrate_git_repository.sh <origin> <destination>
```

## Usecases

### Git repository migration between Azure Repos (Azure DevOps)

* Make sure Azure CLI is installed and the Azure DevOps extension has been added (ref. [learn.microsoft.com](https://learn.microsoft.com/en-us/azure/devops/cli/))

```bash
az --version
az extension add --name azure-devops
```

* Connect to Azure

```bash
export AZURE_DEVOPS_EXT_PAT=xxxxxxxxxx
```

* Run the migration script

```bash
scripts/migrate_azure_repos.sh <oldorg> <oldproject> <neworg> <newproject> <reponame> <repoid> <tempdirpath>
```
