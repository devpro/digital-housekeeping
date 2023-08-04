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

* Make sure Azure CLI is installed and the Azure DevOps extension has been added (ref. [Get started with Azure DevOps CLI](https://learn.microsoft.com/en-us/azure/devops/cli/))

```bash
az --version
az extension add --name azure-devops
```

* Connect to Azure (ref. [Sign in with a personal access token](https://learn.microsoft.com/en-us/azure/devops/cli/log-in-via-pat))

```bash
export AZURE_DEVOPS_EXT_PAT=xxxxxxxxxx
```

* Run the migration script (ref. [az repos](https://learn.microsoft.com/en-us/cli/azure/repos))

```bash
scripts/migrate_azure_repos.sh <oldorg> <oldproject> <neworg> <newproject> <reponame> <repoid> <tempdirpath>
```
