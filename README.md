# Microsoft SQL Server (2022) in Docker w/ Adventureworks

This is a repo I created to run an (docker) instance of Microsoft SQL Server for testing purposes.


## Notes

- Requires Docker Engine 1.8, 2GB of hard disk space and 2GB of RAM ([1])

## Installation

1. Pull the repo
2. Edit the docker-compose.yaml file to change the default SA_PASSWORD value, `YourSecretPa$$W0rD`
3. Make the pre-init.sh script executable, `chmod +x pre-init.sh`
4. Run the pre-init.sh script to download the backup file(s), `./pre-init.sh`
5. Run `docker-compose up` in the local directory to create and spin up the container.  Assuming there are no errors, and you see `exited with code 0` you can re-run `docker-compose up -d` to start the container silently.


## Sources

- https://sharryxu.com/posts/using-docker-host-adventureworks-db/


[1]: https://learn.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver16&pivots=cs1-bash#requirements