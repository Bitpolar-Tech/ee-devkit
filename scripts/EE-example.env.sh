# ExpressionEngine Scripts Environment
#
# Inspired by https://github.com/nystudio107/ExpressionEngine-scripts
# Local environmental config for EE Scripts
#
# @author    Stefan Euchenhofer
# @copyright Copyright (c) 2019 Bitpolar Technologies
# @link      https://www.bitpolar.de/
# @license   MIT
#
# This file should be renamed to '.env.sh' and it should reside in the
# `scripts` directory.  Add '.env.sh' to your .gitignore.

# -- GLOBAL settings --

# What to prefix the database table names with
GLOBAL_DB_TABLE_PREFIX="exp_"

# The path of the `ExpressionEngine` System  folder, relative to the root path; paths should always have a trailing /
GLOBAL_EE_PATH="./system/"

# The maximum age of db backups in days; backups older than this will be automatically removed
GLOBAL_DB_BACKUPS_MAX_AGE=90

# The database driver for this ExpressionEngine install ('mysql' or 'pgsql')
GLOBAL_DB_DRIVER="mysql"

# -- LOCAL settings --

# Local path constants; paths should always have a trailing /
LOCAL_ROOT_PATH="REPLACE_ME"
LOCAL_ASSETS_PATH=${LOCAL_ROOT_PATH}"REPLACE_ME"

# Local user & group that should own the ExpressionEngine CMS install
LOCAL_CHOWN_USER="admin"
LOCAL_CHOWN_GROUP="apache"

# Local directories relative to LOCAL_ROOT_PATH that should be writeable by the $CHOWN_GROUP
LOCAL_WRITEABLE_DIRS=(
                "${GLOBAL_EE_PATH}ee"
                "${GLOBAL_EE_PATH}user/config"
                "${GLOBAL_EE_PATH}user/cache"
                "${GLOBAL_EE_PATH}user/templates"
                "${GLOBAL_EE_PATH}themes/ee"
                "${GLOBAL_EE_PATH}themes/user"
                )

# Local asset directories relative to LOCAL_ASSETS_PATH that should be synched with remote assets
LOCAL_ASSETS_DIRS=(
                ""
                )

# ExpressionEngine-specific file directories relative to GLOBAL_EE_PATH that should be synched with remote files
LOCAL_EE_FILE_DIRS=(
                ""
                )

# Absolute paths to directories to back up, in addition to `LOCAL_ASSETS_DIRS` and `LOCAL_EE_FILE_DIRS`
LOCAL_DIRS_TO_BACKUP=(
                ""
                )

# Local FastCGI Cache path; leave it empty ("") if you're not using FastCGI Cache; paths should always have a trailing /
# The `clear_caches.sh` script will delete everything in this directory when it is executed (say, on deploy)
LOCAL_FASTCGI_CACHE_DIR=""

# Local Redis database ID; leave it empty ("") if you're not using Redis. The `clear_caches.sh` script will purge
# this Redis database when it is executed (say, on deploy)
LOCAL_REDIS_DB_ID=""

# Local Redis password; leave it empty ("") if no password is required. You'll probably only need this if you've set a
# password for Redis yourself. It's disabled by default on Redis installations.
LOCAL_REDIS_PASSWORD=""

# Local database constants; default port for mysql is 3306, default port for postgres is 5432
LOCAL_DB_NAME="REPLACE_ME"
LOCAL_DB_PASSWORD="REPLACE_ME"
LOCAL_DB_USER="REPLACE_ME"
LOCAL_DB_HOST="localhost"
LOCAL_DB_PORT="3306"
LOCAL_DB_SCHEMA="public"

# If you are using mysql 5.6.10 or later and you have `login-path` setup as per:
# https://opensourcedbms.com/dbms/passwordless-authentication-using-mysql_config_editor-with-mysql-5-6/
# you can use it instead of the above LOCAL_DB_* constants; otherwise leave this blank
LOCAL_DB_LOGIN_PATH=""

# The `mysql` and `mysqldump` commands to run locally
LOCAL_MYSQL_CMD="mysql"
LOCAL_MYSQLDUMP_CMD="mysqldump"

# The `psql` and `pg_dump` commands to run locally
LOCAL_PSQL_CMD="psql"
LOCAL_PG_DUMP_CMD="pg_dump"

# Local backups path; paths should always have a trailing /
LOCAL_BACKUPS_PATH="REPLACE_ME"

# -- REMOTE settings --

# Remote ssh credentials, user@domain.com and Remote SSH Port
REMOTE_SSH_LOGIN="REPLACE_ME"
REMOTE_SSH_PORT="22"

# Should we connect to the remote database server via ssh?
REMOTE_DB_USING_SSH="yes"

# Remote path constants; paths should always have a trailing /
REMOTE_ROOT_PATH="REPLACE_ME"
REMOTE_ASSETS_PATH=${REMOTE_ROOT_PATH}"REPLACE_ME"

# Remote database constants; default port for mysql is 3306, default port for postgres is 5432
REMOTE_DB_NAME="REPLACE_ME"
REMOTE_DB_PASSWORD="REPLACE_ME"
REMOTE_DB_USER="REPLACE_ME"
REMOTE_DB_HOST="localhost"
REMOTE_DB_PORT="3306"
REMOTE_DB_SCHEMA="public"

# If you are using mysql 5.6.10 or later and you have `login-path` setup as per:
# https://opensourcedbms.com/dbms/passwordless-authentication-using-mysql_config_editor-with-mysql-5-6/
# you can use it instead of the above REMOTE_DB_* constants; otherwise leave this blank
REMOTE_DB_LOGIN_PATH=""

# The `mysql` and `mysqldump` commands to run remotely
REMOTE_MYSQL_CMD="mysql"
REMOTE_MYSQLDUMP_CMD="mysqldump"

# The `psql` and `pg_dump` commands to run remotely
REMOTE_PSQL_CMD="psql"
REMOTE_PG_DUMP_CMD="pg_dump"

# Remote backups path; paths should always have a trailing /
REMOTE_BACKUPS_PATH="REPLACE_ME"
