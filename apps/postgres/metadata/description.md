# PostgreSQL

PostgreSQL is a powerful, open source object-relational database system with over 30 years of active development that has earned it a strong reputation for reliability, feature robustness, and performance.

## Features

- Full ACID compliance
- Multi-Version Concurrency Control (MVCC)
- Point-in-time recovery
- Tablespaces
- Asynchronous replication
- Native Microsoft Windows Server version
- Sophisticated query planner/optimizer
- Write-ahead logging for fault tolerance
- International character sets support
- Unicode support
- Full-text search
- JSON support
- And much more!

## Configuration

The following environment variables are available:

- `POSTGRES_USER`: The username for the database (default: postgres)
- `POSTGRES_PASSWORD`: The password for the database user (required)
- `POSTGRES_DB`: The name of the database to create (default: postgres)

## Data Persistence

All data is stored in the `data` directory and will persist between container restarts.

## Security

- The database is not exposed to the internet by default
- Strong password is required
- Data is stored in a persistent volume
- Container runs with non-root user

## Support

For more information, visit the [official PostgreSQL documentation](https://www.postgresql.org/docs/). 