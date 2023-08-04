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

## Examples

### Azure Repo to Azure Repo (Azure DevOps -> Azure DevOps)

```bash
almops create repository new_repo
scripts/migrate_git_repository.sh old_repo new_repo
almops delete repository old_repo
```
