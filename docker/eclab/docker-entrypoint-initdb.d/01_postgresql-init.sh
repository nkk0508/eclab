export PGUSER="$POSTGRES_USER";
export PGPASSWORD="$POSTGRES_PASSWORD";
psql eclab_db << EOF
  -- create user for readonly
  CREATE ROLE "eclab-user-readonly" LOGIN PASSWORD 'weak-password';
  GRANT CONNECT ON DATABASE eclab_db TO "eclab-user-readonly";
  GRANT USAGE ON SCHEMA public TO "eclab-user-readonly";
  ALTER DEFAULT PRIVILEGES FOR USER "eclab-user" GRANT SELECT ON TABLES TO "eclab-user-readonly";
EOF
