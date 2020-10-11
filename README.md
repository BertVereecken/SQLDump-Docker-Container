# SQLDump of MySQL in docker container

## Description

Export a SQL dump of a DB running inside a docker container

Make sure you make the scripts executable. You can do this with:

`chmod +x ./<name_of_the script>.sh`

For example:

```
chmod +x ./restoreSQLDump.sh
```

## How to make an SQL dump

```
# makeSQLDump.sh <docker_container_name> <name_of_target_file>

# The target file will be a .sql file
# <docker_container_name> should be the docker container where your db lives and should be a MySQL DB.

./makeSQLDump.sh firefly_db myBackup2020_03_05
```

## How to restore an SQL dump

```
# restoreSQLDump.sh <docker_container_name> <name_of_target_file>

./restoreSQLDump.sh firefly_db myBackup2020_03_05
```

## TODO

- [ ] add `db_user` and `db_pass` as args for the scripts with flags
- [ ] make the script run on a cronjob to make automatic backups
- [ ] upload to google drive or local filesystem might be nice
