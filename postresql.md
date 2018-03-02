PSQL
====

Install
-------

    $ sudo apt-get install postgresql-client
	
Connect
-------

    $ psql "dbname=mydb host=mydb.eu-west-1.rds.amazonaws.com user=myuser password=mypass port=5432"

Commands
--------

See all tables:

    \d
	
Drop all tables:

    DROP SCHEMA public CASCADE;
	CREATE SCHEMA public;
	GRANT ALL ON SCHEMA public TO postgres;
    GRANT ALL ON SCHEMA public TO public;
	select 'drop table "' || tablename || '" cascade;' from pg_tables where schemaname = 'public';