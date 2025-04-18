PGDMP      3                 }            postgres    15.8    17.2 X              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    5    postgres    DATABASE     t   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE postgres;
                     postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    4381                       0    0    DATABASE postgres    ACL     2   GRANT ALL ON DATABASE postgres TO dashboard_user;
                        postgres    false    4381                        0    0    postgres    DATABASE PROPERTIES     �   ALTER DATABASE postgres SET "app.settings.jwt_exp" TO '3600';
ALTER DATABASE postgres SET search_path TO 'public', 'extensions';
                          postgres    false                        2615    16488    auth    SCHEMA        CREATE SCHEMA auth;
    DROP SCHEMA auth;
                     supabase_admin    false            !           0    0    SCHEMA auth    ACL        GRANT USAGE ON SCHEMA auth TO anon;
GRANT USAGE ON SCHEMA auth TO authenticated;
GRANT USAGE ON SCHEMA auth TO service_role;
GRANT ALL ON SCHEMA auth TO supabase_auth_admin;
GRANT ALL ON SCHEMA auth TO dashboard_user;
GRANT ALL ON SCHEMA auth TO postgres;
                        supabase_admin    false    17                        2615    16388 
   extensions    SCHEMA        CREATE SCHEMA extensions;
    DROP SCHEMA extensions;
                     postgres    false            "           0    0    SCHEMA extensions    ACL     �   GRANT USAGE ON SCHEMA extensions TO anon;
GRANT USAGE ON SCHEMA extensions TO authenticated;
GRANT USAGE ON SCHEMA extensions TO service_role;
GRANT ALL ON SCHEMA extensions TO dashboard_user;
                        postgres    false    15                        2615    16618    graphql    SCHEMA        CREATE SCHEMA graphql;
    DROP SCHEMA graphql;
                     supabase_admin    false                        2615    16607    graphql_public    SCHEMA        CREATE SCHEMA graphql_public;
    DROP SCHEMA graphql_public;
                     supabase_admin    false            	            3079    31154    pg_net 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS pg_net WITH SCHEMA extensions;
    DROP EXTENSION pg_net;
                        false    15            #           0    0    EXTENSION pg_net    COMMENT     -   COMMENT ON EXTENSION pg_net IS 'Async HTTP';
                             false    9            $           0    0 
   SCHEMA net    ACL     �   GRANT USAGE ON SCHEMA net TO supabase_functions_admin;
GRANT USAGE ON SCHEMA net TO postgres;
GRANT USAGE ON SCHEMA net TO anon;
GRANT USAGE ON SCHEMA net TO authenticated;
GRANT USAGE ON SCHEMA net TO service_role;
                        supabase_admin    false    31                        2615    16386 	   pgbouncer    SCHEMA        CREATE SCHEMA pgbouncer;
    DROP SCHEMA pgbouncer;
                  	   pgbouncer    false                        2615    16645    pgsodium    SCHEMA        CREATE SCHEMA pgsodium;
    DROP SCHEMA pgsodium;
                     supabase_admin    false                        3079    16646    pgsodium 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS pgsodium WITH SCHEMA pgsodium;
    DROP EXTENSION pgsodium;
                        false    19            %           0    0    EXTENSION pgsodium    COMMENT     \   COMMENT ON EXTENSION pgsodium IS 'Pgsodium is a modern cryptography library for Postgres.';
                             false    6            &           0    0    SCHEMA public    ACL     �   GRANT USAGE ON SCHEMA public TO postgres;
GRANT USAGE ON SCHEMA public TO anon;
GRANT USAGE ON SCHEMA public TO authenticated;
GRANT USAGE ON SCHEMA public TO service_role;
                        pg_database_owner    false    14                        2615    16599    realtime    SCHEMA        CREATE SCHEMA realtime;
    DROP SCHEMA realtime;
                     supabase_admin    false            '           0    0    SCHEMA realtime    ACL     �   GRANT USAGE ON SCHEMA realtime TO postgres;
GRANT USAGE ON SCHEMA realtime TO anon;
GRANT USAGE ON SCHEMA realtime TO authenticated;
GRANT USAGE ON SCHEMA realtime TO service_role;
GRANT ALL ON SCHEMA realtime TO supabase_realtime_admin;
                        supabase_admin    false    18                        2615    16536    storage    SCHEMA        CREATE SCHEMA storage;
    DROP SCHEMA storage;
                     supabase_admin    false            (           0    0    SCHEMA storage    ACL       GRANT ALL ON SCHEMA storage TO postgres;
GRANT USAGE ON SCHEMA storage TO anon;
GRANT USAGE ON SCHEMA storage TO authenticated;
GRANT USAGE ON SCHEMA storage TO service_role;
GRANT ALL ON SCHEMA storage TO supabase_storage_admin;
GRANT ALL ON SCHEMA storage TO dashboard_user;
                        supabase_admin    false    16                         2615    31197    supabase_functions    SCHEMA     "   CREATE SCHEMA supabase_functions;
     DROP SCHEMA supabase_functions;
                     supabase_admin    false            )           0    0    SCHEMA supabase_functions    ACL     !  GRANT USAGE ON SCHEMA supabase_functions TO postgres;
GRANT USAGE ON SCHEMA supabase_functions TO anon;
GRANT USAGE ON SCHEMA supabase_functions TO authenticated;
GRANT USAGE ON SCHEMA supabase_functions TO service_role;
GRANT ALL ON SCHEMA supabase_functions TO supabase_functions_admin;
                        supabase_admin    false    32                        2615    31013    supabase_migrations    SCHEMA     #   CREATE SCHEMA supabase_migrations;
 !   DROP SCHEMA supabase_migrations;
                     postgres    false                        2615    16949    vault    SCHEMA        CREATE SCHEMA vault;
    DROP SCHEMA vault;
                     supabase_admin    false                        3079    16982 
   pg_graphql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS pg_graphql WITH SCHEMA graphql;
    DROP EXTENSION pg_graphql;
                        false    25            *           0    0    EXTENSION pg_graphql    COMMENT     B   COMMENT ON EXTENSION pg_graphql IS 'pg_graphql: GraphQL support';
                             false    8                        3079    16389    pg_stat_statements 	   EXTENSION     J   CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA extensions;
 #   DROP EXTENSION pg_stat_statements;
                        false    15            +           0    0    EXTENSION pg_stat_statements    COMMENT     u   COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';
                             false    2                        3079    16434    pgcrypto 	   EXTENSION     @   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA extensions;
    DROP EXTENSION pgcrypto;
                        false    15            ,           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                             false    4                        3079    16471    pgjwt 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS pgjwt WITH SCHEMA extensions;
    DROP EXTENSION pgjwt;
                        false    15    4            -           0    0    EXTENSION pgjwt    COMMENT     C   COMMENT ON EXTENSION pgjwt IS 'JSON Web Token API for Postgresql';
                             false    5                        3079    16950    supabase_vault 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS supabase_vault WITH SCHEMA vault;
    DROP EXTENSION supabase_vault;
                        false    6    22            .           0    0    EXTENSION supabase_vault    COMMENT     C   COMMENT ON EXTENSION supabase_vault IS 'Supabase Vault Extension';
                             false    7                        3079    16423 	   uuid-ossp 	   EXTENSION     C   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA extensions;
    DROP EXTENSION "uuid-ossp";
                        false    15            /           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                             false    3            ?           1247    28786 	   aal_level    TYPE     K   CREATE TYPE auth.aal_level AS ENUM (
    'aal1',
    'aal2',
    'aal3'
);
    DROP TYPE auth.aal_level;
       auth               supabase_auth_admin    false    17            W           1247    28927    code_challenge_method    TYPE     L   CREATE TYPE auth.code_challenge_method AS ENUM (
    's256',
    'plain'
);
 &   DROP TYPE auth.code_challenge_method;
       auth               supabase_auth_admin    false    17            <           1247    28780    factor_status    TYPE     M   CREATE TYPE auth.factor_status AS ENUM (
    'unverified',
    'verified'
);
    DROP TYPE auth.factor_status;
       auth               supabase_auth_admin    false    17            9           1247    28774    factor_type    TYPE     R   CREATE TYPE auth.factor_type AS ENUM (
    'totp',
    'webauthn',
    'phone'
);
    DROP TYPE auth.factor_type;
       auth               supabase_auth_admin    false    17            ]           1247    28969    one_time_token_type    TYPE     �   CREATE TYPE auth.one_time_token_type AS ENUM (
    'confirmation_token',
    'reauthentication_token',
    'recovery_token',
    'email_change_token_new',
    'email_change_token_current',
    'phone_change_token'
);
 $   DROP TYPE auth.one_time_token_type;
       auth               supabase_auth_admin    false    17            {           1247    29140    action    TYPE     o   CREATE TYPE realtime.action AS ENUM (
    'INSERT',
    'UPDATE',
    'DELETE',
    'TRUNCATE',
    'ERROR'
);
    DROP TYPE realtime.action;
       realtime               supabase_admin    false    18            l           1247    29101    equality_op    TYPE     v   CREATE TYPE realtime.equality_op AS ENUM (
    'eq',
    'neq',
    'lt',
    'lte',
    'gt',
    'gte',
    'in'
);
     DROP TYPE realtime.equality_op;
       realtime               supabase_admin    false    18            o           1247    29115    user_defined_filter    TYPE     j   CREATE TYPE realtime.user_defined_filter AS (
	column_name text,
	op realtime.equality_op,
	value text
);
 (   DROP TYPE realtime.user_defined_filter;
       realtime               supabase_admin    false    18    1388            �           1247    29182 
   wal_column    TYPE     �   CREATE TYPE realtime.wal_column AS (
	name text,
	type_name text,
	type_oid oid,
	value jsonb,
	is_pkey boolean,
	is_selectable boolean
);
    DROP TYPE realtime.wal_column;
       realtime               supabase_admin    false    18            ~           1247    29153    wal_rls    TYPE     s   CREATE TYPE realtime.wal_rls AS (
	wal jsonb,
	is_rls_enabled boolean,
	subscription_ids uuid[],
	errors text[]
);
    DROP TYPE realtime.wal_rls;
       realtime               supabase_admin    false    18            �           1255    16534    email()    FUNCTION       CREATE FUNCTION auth.email() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.email', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'email')
  )::text
$$;
    DROP FUNCTION auth.email();
       auth               supabase_auth_admin    false    17            0           0    0    FUNCTION email()    COMMENT     X   COMMENT ON FUNCTION auth.email() IS 'Deprecated. Use auth.jwt() -> ''email'' instead.';
          auth               supabase_auth_admin    false    389            1           0    0    FUNCTION email()    ACL     6   GRANT ALL ON FUNCTION auth.email() TO dashboard_user;
          auth               supabase_auth_admin    false    389                       1255    28756    jwt()    FUNCTION     �   CREATE FUNCTION auth.jwt() RETURNS jsonb
    LANGUAGE sql STABLE
    AS $$
  select 
    coalesce(
        nullif(current_setting('request.jwt.claim', true), ''),
        nullif(current_setting('request.jwt.claims', true), '')
    )::jsonb
$$;
    DROP FUNCTION auth.jwt();
       auth               supabase_auth_admin    false    17            2           0    0    FUNCTION jwt()    ACL     b   GRANT ALL ON FUNCTION auth.jwt() TO postgres;
GRANT ALL ON FUNCTION auth.jwt() TO dashboard_user;
          auth               supabase_auth_admin    false    541            �           1255    16533    role()    FUNCTION        CREATE FUNCTION auth.role() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.role', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'role')
  )::text
$$;
    DROP FUNCTION auth.role();
       auth               supabase_auth_admin    false    17            3           0    0    FUNCTION role()    COMMENT     V   COMMENT ON FUNCTION auth.role() IS 'Deprecated. Use auth.jwt() -> ''role'' instead.';
          auth               supabase_auth_admin    false    388            4           0    0    FUNCTION role()    ACL     5   GRANT ALL ON FUNCTION auth.role() TO dashboard_user;
          auth               supabase_auth_admin    false    388            �           1255    16532    uid()    FUNCTION     �   CREATE FUNCTION auth.uid() RETURNS uuid
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.sub', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'sub')
  )::uuid
$$;
    DROP FUNCTION auth.uid();
       auth               supabase_auth_admin    false    17            5           0    0    FUNCTION uid()    COMMENT     T   COMMENT ON FUNCTION auth.uid() IS 'Deprecated. Use auth.jwt() -> ''sub'' instead.';
          auth               supabase_auth_admin    false    387            6           0    0    FUNCTION uid()    ACL     4   GRANT ALL ON FUNCTION auth.uid() TO dashboard_user;
          auth               supabase_auth_admin    false    387            7           0    0 D   FUNCTION algorithm_sign(signables text, secret text, algorithm text)    ACL     Y  REVOKE ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) TO dashboard_user;
       
   extensions               postgres    false    383            8           0    0    FUNCTION armor(bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.armor(bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO dashboard_user;
       
   extensions               postgres    false    377            9           0    0 %   FUNCTION armor(bytea, text[], text[])    ACL     �   REVOKE ALL ON FUNCTION extensions.armor(bytea, text[], text[]) FROM postgres;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO dashboard_user;
       
   extensions               postgres    false    378            :           0    0    FUNCTION crypt(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.crypt(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO dashboard_user;
       
   extensions               postgres    false    349            ;           0    0    FUNCTION dearmor(text)    ACL     �   REVOKE ALL ON FUNCTION extensions.dearmor(text) FROM postgres;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO dashboard_user;
       
   extensions               postgres    false    379            <           0    0 $   FUNCTION decrypt(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    353            =           0    0 .   FUNCTION decrypt_iv(bytea, bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    355            >           0    0    FUNCTION digest(bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.digest(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    346            ?           0    0    FUNCTION digest(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.digest(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO dashboard_user;
       
   extensions               postgres    false    345            @           0    0 $   FUNCTION encrypt(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    352            A           0    0 .   FUNCTION encrypt_iv(bytea, bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    354            B           0    0 "   FUNCTION gen_random_bytes(integer)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_random_bytes(integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO dashboard_user;
       
   extensions               postgres    false    356            C           0    0    FUNCTION gen_random_uuid()    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_random_uuid() FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO dashboard_user;
       
   extensions               postgres    false    357            D           0    0    FUNCTION gen_salt(text)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_salt(text) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO dashboard_user;
       
   extensions               postgres    false    350            E           0    0     FUNCTION gen_salt(text, integer)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_salt(text, integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO dashboard_user;
       
   extensions               postgres    false    351            �           1255    16591    grant_pg_cron_access()    FUNCTION     �  CREATE FUNCTION extensions.grant_pg_cron_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_cron'
  )
  THEN
    grant usage on schema cron to postgres with grant option;

    alter default privileges in schema cron grant all on tables to postgres with grant option;
    alter default privileges in schema cron grant all on functions to postgres with grant option;
    alter default privileges in schema cron grant all on sequences to postgres with grant option;

    alter default privileges for user supabase_admin in schema cron grant all
        on sequences to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on tables to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on functions to postgres with grant option;

    grant all privileges on all tables in schema cron to postgres with grant option;
    revoke all on table cron.job from postgres;
    grant select on table cron.job to postgres with grant option;
  END IF;
END;
$$;
 1   DROP FUNCTION extensions.grant_pg_cron_access();
    
   extensions               postgres    false    15            F           0    0    FUNCTION grant_pg_cron_access()    COMMENT     U   COMMENT ON FUNCTION extensions.grant_pg_cron_access() IS 'Grants access to pg_cron';
       
   extensions               postgres    false    390            G           0    0    FUNCTION grant_pg_cron_access()    ACL     �   REVOKE ALL ON FUNCTION extensions.grant_pg_cron_access() FROM postgres;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO dashboard_user;
       
   extensions               postgres    false    390            �           1255    16612    grant_pg_graphql_access()    FUNCTION     i	  CREATE FUNCTION extensions.grant_pg_graphql_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
DECLARE
    func_is_graphql_resolve bool;
BEGIN
    func_is_graphql_resolve = (
        SELECT n.proname = 'resolve'
        FROM pg_event_trigger_ddl_commands() AS ev
        LEFT JOIN pg_catalog.pg_proc AS n
        ON ev.objid = n.oid
    );

    IF func_is_graphql_resolve
    THEN
        -- Update public wrapper to pass all arguments through to the pg_graphql resolve func
        DROP FUNCTION IF EXISTS graphql_public.graphql;
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language sql
        as $$
            select graphql.resolve(
                query := query,
                variables := coalesce(variables, '{}'),
                "operationName" := "operationName",
                extensions := extensions
            );
        $$;

        -- This hook executes when `graphql.resolve` is created. That is not necessarily the last
        -- function in the extension so we need to grant permissions on existing entities AND
        -- update default permissions to any others that are created after `graphql.resolve`
        grant usage on schema graphql to postgres, anon, authenticated, service_role;
        grant select on all tables in schema graphql to postgres, anon, authenticated, service_role;
        grant execute on all functions in schema graphql to postgres, anon, authenticated, service_role;
        grant all on all sequences in schema graphql to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on tables to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on functions to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on sequences to postgres, anon, authenticated, service_role;

        -- Allow postgres role to allow granting usage on graphql and graphql_public schemas to custom roles
        grant usage on schema graphql_public to postgres with grant option;
        grant usage on schema graphql to postgres with grant option;
    END IF;

END;
$_$;
 4   DROP FUNCTION extensions.grant_pg_graphql_access();
    
   extensions               supabase_admin    false    15            H           0    0 "   FUNCTION grant_pg_graphql_access()    COMMENT     [   COMMENT ON FUNCTION extensions.grant_pg_graphql_access() IS 'Grants access to pg_graphql';
       
   extensions               supabase_admin    false    394            I           0    0 "   FUNCTION grant_pg_graphql_access()    ACL     Z   GRANT ALL ON FUNCTION extensions.grant_pg_graphql_access() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    394            �           1255    16593    grant_pg_net_access()    FUNCTION     �  CREATE FUNCTION extensions.grant_pg_net_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
  BEGIN
    IF EXISTS (
      SELECT 1
      FROM pg_event_trigger_ddl_commands() AS ev
      JOIN pg_extension AS ext
      ON ev.objid = ext.oid
      WHERE ext.extname = 'pg_net'
    )
    THEN
      GRANT USAGE ON SCHEMA net TO supabase_functions_admin, postgres, anon, authenticated, service_role;

      IF EXISTS (
        SELECT FROM pg_extension
        WHERE extname = 'pg_net'
        -- all versions in use on existing projects as of 2025-02-20
        -- version 0.12.0 onwards don't need these applied
        AND extversion IN ('0.2', '0.6', '0.7', '0.7.1', '0.8', '0.10.0', '0.11.0')
      ) THEN
        ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;
        ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;

        ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;
        ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;

        REVOKE ALL ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;
        REVOKE ALL ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;

        GRANT EXECUTE ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
        GRANT EXECUTE ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
      END IF;
    END IF;
  END;
  $$;
 0   DROP FUNCTION extensions.grant_pg_net_access();
    
   extensions               postgres    false    15            J           0    0    FUNCTION grant_pg_net_access()    COMMENT     S   COMMENT ON FUNCTION extensions.grant_pg_net_access() IS 'Grants access to pg_net';
       
   extensions               postgres    false    391            K           0    0    FUNCTION grant_pg_net_access()    ACL     �   REVOKE ALL ON FUNCTION extensions.grant_pg_net_access() FROM postgres;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO dashboard_user;
       
   extensions               postgres    false    391            L           0    0 !   FUNCTION hmac(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.hmac(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    348            M           0    0    FUNCTION hmac(text, text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.hmac(text, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO dashboard_user;
       
   extensions               postgres    false    347            N           0    0 U  FUNCTION pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision)    ACL     �  REVOKE ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) TO dashboard_user;
       
   extensions               postgres    false    334            O           0    0 ^   FUNCTION pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone)    ACL     �  REVOKE ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO dashboard_user;
       
   extensions               postgres    false    333            P           0    0 G   FUNCTION pg_stat_statements_reset(userid oid, dbid oid, queryid bigint)    ACL     b  REVOKE ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) TO dashboard_user;
       
   extensions               postgres    false    332            Q           0    0 >   FUNCTION pgp_armor_headers(text, OUT key text, OUT value text)    ACL     G  REVOKE ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO dashboard_user;
       
   extensions               postgres    false    380            R           0    0    FUNCTION pgp_key_id(bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_key_id(bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO dashboard_user;
       
   extensions               postgres    false    376            S           0    0 &   FUNCTION pgp_pub_decrypt(bytea, bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO dashboard_user;
       
   extensions               postgres    false    370            T           0    0 ,   FUNCTION pgp_pub_decrypt(bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    372            U           0    0 2   FUNCTION pgp_pub_decrypt(bytea, bytea, text, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    374            V           0    0 ,   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO dashboard_user;
       
   extensions               postgres    false    371            W           0    0 2   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    373            X           0    0 8   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text, text)    ACL     5  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    375            Y           0    0 %   FUNCTION pgp_pub_encrypt(text, bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO dashboard_user;
       
   extensions               postgres    false    366            Z           0    0 +   FUNCTION pgp_pub_encrypt(text, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    368            [           0    0 ,   FUNCTION pgp_pub_encrypt_bytea(bytea, bytea)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO dashboard_user;
       
   extensions               postgres    false    367            \           0    0 2   FUNCTION pgp_pub_encrypt_bytea(bytea, bytea, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    369            ]           0    0 %   FUNCTION pgp_sym_decrypt(bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    362            ^           0    0 +   FUNCTION pgp_sym_decrypt(bytea, text, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    364            _           0    0 +   FUNCTION pgp_sym_decrypt_bytea(bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    363            `           0    0 1   FUNCTION pgp_sym_decrypt_bytea(bytea, text, text)    ACL        REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    365            a           0    0 $   FUNCTION pgp_sym_encrypt(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO dashboard_user;
       
   extensions               postgres    false    358            b           0    0 *   FUNCTION pgp_sym_encrypt(text, text, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO dashboard_user;
       
   extensions               postgres    false    360            c           0    0 +   FUNCTION pgp_sym_encrypt_bytea(bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    359            d           0    0 1   FUNCTION pgp_sym_encrypt_bytea(bytea, text, text)    ACL        REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    361            �           1255    16603    pgrst_ddl_watch()    FUNCTION     >  CREATE FUNCTION extensions.pgrst_ddl_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  cmd record;
BEGIN
  FOR cmd IN SELECT * FROM pg_event_trigger_ddl_commands()
  LOOP
    IF cmd.command_tag IN (
      'CREATE SCHEMA', 'ALTER SCHEMA'
    , 'CREATE TABLE', 'CREATE TABLE AS', 'SELECT INTO', 'ALTER TABLE'
    , 'CREATE FOREIGN TABLE', 'ALTER FOREIGN TABLE'
    , 'CREATE VIEW', 'ALTER VIEW'
    , 'CREATE MATERIALIZED VIEW', 'ALTER MATERIALIZED VIEW'
    , 'CREATE FUNCTION', 'ALTER FUNCTION'
    , 'CREATE TRIGGER'
    , 'CREATE TYPE', 'ALTER TYPE'
    , 'CREATE RULE'
    , 'COMMENT'
    )
    -- don't notify in case of CREATE TEMP table or other objects created on pg_temp
    AND cmd.schema_name is distinct from 'pg_temp'
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;
 ,   DROP FUNCTION extensions.pgrst_ddl_watch();
    
   extensions               supabase_admin    false    15            e           0    0    FUNCTION pgrst_ddl_watch()    ACL     R   GRANT ALL ON FUNCTION extensions.pgrst_ddl_watch() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    392            �           1255    16604    pgrst_drop_watch()    FUNCTION       CREATE FUNCTION extensions.pgrst_drop_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  obj record;
BEGIN
  FOR obj IN SELECT * FROM pg_event_trigger_dropped_objects()
  LOOP
    IF obj.object_type IN (
      'schema'
    , 'table'
    , 'foreign table'
    , 'view'
    , 'materialized view'
    , 'function'
    , 'trigger'
    , 'type'
    , 'rule'
    )
    AND obj.is_temporary IS false -- no pg_temp objects
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;
 -   DROP FUNCTION extensions.pgrst_drop_watch();
    
   extensions               supabase_admin    false    15            f           0    0    FUNCTION pgrst_drop_watch()    ACL     S   GRANT ALL ON FUNCTION extensions.pgrst_drop_watch() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    393            �           1255    16614    set_graphql_placeholder()    FUNCTION     r  CREATE FUNCTION extensions.set_graphql_placeholder() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
    DECLARE
    graphql_is_dropped bool;
    BEGIN
    graphql_is_dropped = (
        SELECT ev.schema_name = 'graphql_public'
        FROM pg_event_trigger_dropped_objects() AS ev
        WHERE ev.schema_name = 'graphql_public'
    );

    IF graphql_is_dropped
    THEN
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language plpgsql
        as $$
            DECLARE
                server_version float;
            BEGIN
                server_version = (SELECT (SPLIT_PART((select version()), ' ', 2))::float);

                IF server_version >= 14 THEN
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql extension is not enabled.'
                            )
                        )
                    );
                ELSE
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql is only available on projects running Postgres 14 onwards.'
                            )
                        )
                    );
                END IF;
            END;
        $$;
    END IF;

    END;
$_$;
 4   DROP FUNCTION extensions.set_graphql_placeholder();
    
   extensions               supabase_admin    false    15            g           0    0 "   FUNCTION set_graphql_placeholder()    COMMENT     |   COMMENT ON FUNCTION extensions.set_graphql_placeholder() IS 'Reintroduces placeholder function for graphql_public.graphql';
       
   extensions               supabase_admin    false    395            h           0    0 "   FUNCTION set_graphql_placeholder()    ACL     Z   GRANT ALL ON FUNCTION extensions.set_graphql_placeholder() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    395            i           0    0 8   FUNCTION sign(payload json, secret text, algorithm text)    ACL     5  REVOKE ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) TO dashboard_user;
       
   extensions               postgres    false    384            j           0    0 "   FUNCTION try_cast_double(inp text)    ACL     �   REVOKE ALL ON FUNCTION extensions.try_cast_double(inp text) FROM postgres;
GRANT ALL ON FUNCTION extensions.try_cast_double(inp text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.try_cast_double(inp text) TO dashboard_user;
       
   extensions               postgres    false    386            k           0    0    FUNCTION url_decode(data text)    ACL     �   REVOKE ALL ON FUNCTION extensions.url_decode(data text) FROM postgres;
GRANT ALL ON FUNCTION extensions.url_decode(data text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.url_decode(data text) TO dashboard_user;
       
   extensions               postgres    false    382            l           0    0    FUNCTION url_encode(data bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.url_encode(data bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.url_encode(data bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.url_encode(data bytea) TO dashboard_user;
       
   extensions               postgres    false    381            m           0    0    FUNCTION uuid_generate_v1()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_generate_v1() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1() TO dashboard_user;
       
   extensions               postgres    false    340            n           0    0    FUNCTION uuid_generate_v1mc()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_generate_v1mc() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1mc() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1mc() TO dashboard_user;
       
   extensions               postgres    false    341            o           0    0 4   FUNCTION uuid_generate_v3(namespace uuid, name text)    ACL     )  REVOKE ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) TO dashboard_user;
       
   extensions               postgres    false    342            p           0    0    FUNCTION uuid_generate_v4()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_generate_v4() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v4() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v4() TO dashboard_user;
       
   extensions               postgres    false    343            q           0    0 4   FUNCTION uuid_generate_v5(namespace uuid, name text)    ACL     )  REVOKE ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) TO dashboard_user;
       
   extensions               postgres    false    344            r           0    0    FUNCTION uuid_nil()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_nil() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_nil() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_nil() TO dashboard_user;
       
   extensions               postgres    false    335            s           0    0    FUNCTION uuid_ns_dns()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_dns() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_dns() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_dns() TO dashboard_user;
       
   extensions               postgres    false    336            t           0    0    FUNCTION uuid_ns_oid()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_oid() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_oid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_oid() TO dashboard_user;
       
   extensions               postgres    false    338            u           0    0    FUNCTION uuid_ns_url()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_url() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_url() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_url() TO dashboard_user;
       
   extensions               postgres    false    337            v           0    0    FUNCTION uuid_ns_x500()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_x500() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_x500() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_x500() TO dashboard_user;
       
   extensions               postgres    false    339            w           0    0 8   FUNCTION verify(token text, secret text, algorithm text)    ACL     5  REVOKE ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) TO dashboard_user;
       
   extensions               postgres    false    385            x           0    0 U   FUNCTION graphql("operationName" text, query text, variables jsonb, extensions jsonb)    ACL       GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO postgres;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO anon;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO authenticated;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO service_role;
          graphql_public               supabase_admin    false    540            K           1255    16387    get_auth(text)    FUNCTION     J  CREATE FUNCTION pgbouncer.get_auth(p_usename text) RETURNS TABLE(username text, password text)
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
    RAISE WARNING 'PgBouncer auth request: %', p_usename;

    RETURN QUERY
    SELECT usename::TEXT, passwd::TEXT FROM pg_catalog.pg_shadow
    WHERE usename = p_usename;
END;
$$;
 2   DROP FUNCTION pgbouncer.get_auth(p_usename text);
    	   pgbouncer               postgres    false    13            y           0    0 !   FUNCTION get_auth(p_usename text)    ACL     �   REVOKE ALL ON FUNCTION pgbouncer.get_auth(p_usename text) FROM PUBLIC;
GRANT ALL ON FUNCTION pgbouncer.get_auth(p_usename text) TO pgbouncer;
       	   pgbouncer               postgres    false    331            z           0    0 ]   FUNCTION crypto_aead_det_decrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea)    ACL     �   GRANT ALL ON FUNCTION pgsodium.crypto_aead_det_decrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea) TO service_role;
          pgsodium               pgsodium_keymaker    false    498            {           0    0 ]   FUNCTION crypto_aead_det_encrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea)    ACL     �   GRANT ALL ON FUNCTION pgsodium.crypto_aead_det_encrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea) TO service_role;
          pgsodium               pgsodium_keymaker    false    497            |           0    0 !   FUNCTION crypto_aead_det_keygen()    ACL     I   GRANT ALL ON FUNCTION pgsodium.crypto_aead_det_keygen() TO service_role;
          pgsodium               supabase_admin    false    480            ?           1255    31332    handle_new_user()    FUNCTION     �  CREATE FUNCTION public.handle_new_user() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  INSERT INTO public.users (id, name, email, role, active, created_at)
  VALUES (
    NEW.id,
    COALESCE(NEW.raw_user_meta_data->>'name', SPLIT_PART(NEW.email, '@', 1)),
    NEW.email,
    COALESCE(NEW.raw_user_meta_data->>'role', 'manufacturer'),
    TRUE,
    NOW()
  )
  ON CONFLICT (id) DO NOTHING; -- Skip if user already exists
  RETURN NEW;
END;
$$;
 (   DROP FUNCTION public.handle_new_user();
       public               postgres    false            }           0    0    FUNCTION handle_new_user()    ACL     �   GRANT ALL ON FUNCTION public.handle_new_user() TO anon;
GRANT ALL ON FUNCTION public.handle_new_user() TO authenticated;
GRANT ALL ON FUNCTION public.handle_new_user() TO service_role;
          public               postgres    false    575            -           1255    29175    apply_rls(jsonb, integer)    FUNCTION     �(  CREATE FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer DEFAULT (1024 * 1024)) RETURNS SETOF realtime.wal_rls
    LANGUAGE plpgsql
    AS $$
declare
-- Regclass of the table e.g. public.notes
entity_ regclass = (quote_ident(wal ->> 'schema') || '.' || quote_ident(wal ->> 'table'))::regclass;

-- I, U, D, T: insert, update ...
action realtime.action = (
    case wal ->> 'action'
        when 'I' then 'INSERT'
        when 'U' then 'UPDATE'
        when 'D' then 'DELETE'
        else 'ERROR'
    end
);

-- Is row level security enabled for the table
is_rls_enabled bool = relrowsecurity from pg_class where oid = entity_;

subscriptions realtime.subscription[] = array_agg(subs)
    from
        realtime.subscription subs
    where
        subs.entity = entity_;

-- Subscription vars
roles regrole[] = array_agg(distinct us.claims_role::text)
    from
        unnest(subscriptions) us;

working_role regrole;
claimed_role regrole;
claims jsonb;

subscription_id uuid;
subscription_has_access bool;
visible_to_subscription_ids uuid[] = '{}';

-- structured info for wal's columns
columns realtime.wal_column[];
-- previous identity values for update/delete
old_columns realtime.wal_column[];

error_record_exceeds_max_size boolean = octet_length(wal::text) > max_record_bytes;

-- Primary jsonb output for record
output jsonb;

begin
perform set_config('role', null, true);

columns =
    array_agg(
        (
            x->>'name',
            x->>'type',
            x->>'typeoid',
            realtime.cast(
                (x->'value') #>> '{}',
                coalesce(
                    (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                    (x->>'type')::regtype
                )
            ),
            (pks ->> 'name') is not null,
            true
        )::realtime.wal_column
    )
    from
        jsonb_array_elements(wal -> 'columns') x
        left join jsonb_array_elements(wal -> 'pk') pks
            on (x ->> 'name') = (pks ->> 'name');

old_columns =
    array_agg(
        (
            x->>'name',
            x->>'type',
            x->>'typeoid',
            realtime.cast(
                (x->'value') #>> '{}',
                coalesce(
                    (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                    (x->>'type')::regtype
                )
            ),
            (pks ->> 'name') is not null,
            true
        )::realtime.wal_column
    )
    from
        jsonb_array_elements(wal -> 'identity') x
        left join jsonb_array_elements(wal -> 'pk') pks
            on (x ->> 'name') = (pks ->> 'name');

for working_role in select * from unnest(roles) loop

    -- Update `is_selectable` for columns and old_columns
    columns =
        array_agg(
            (
                c.name,
                c.type_name,
                c.type_oid,
                c.value,
                c.is_pkey,
                pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
            )::realtime.wal_column
        )
        from
            unnest(columns) c;

    old_columns =
            array_agg(
                (
                    c.name,
                    c.type_name,
                    c.type_oid,
                    c.value,
                    c.is_pkey,
                    pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
                )::realtime.wal_column
            )
            from
                unnest(old_columns) c;

    if action <> 'DELETE' and count(1) = 0 from unnest(columns) c where c.is_pkey then
        return next (
            jsonb_build_object(
                'schema', wal ->> 'schema',
                'table', wal ->> 'table',
                'type', action
            ),
            is_rls_enabled,
            -- subscriptions is already filtered by entity
            (select array_agg(s.subscription_id) from unnest(subscriptions) as s where claims_role = working_role),
            array['Error 400: Bad Request, no primary key']
        )::realtime.wal_rls;

    -- The claims role does not have SELECT permission to the primary key of entity
    elsif action <> 'DELETE' and sum(c.is_selectable::int) <> count(1) from unnest(columns) c where c.is_pkey then
        return next (
            jsonb_build_object(
                'schema', wal ->> 'schema',
                'table', wal ->> 'table',
                'type', action
            ),
            is_rls_enabled,
            (select array_agg(s.subscription_id) from unnest(subscriptions) as s where claims_role = working_role),
            array['Error 401: Unauthorized']
        )::realtime.wal_rls;

    else
        output = jsonb_build_object(
            'schema', wal ->> 'schema',
            'table', wal ->> 'table',
            'type', action,
            'commit_timestamp', to_char(
                ((wal ->> 'timestamp')::timestamptz at time zone 'utc'),
                'YYYY-MM-DD"T"HH24:MI:SS.MS"Z"'
            ),
            'columns', (
                select
                    jsonb_agg(
                        jsonb_build_object(
                            'name', pa.attname,
                            'type', pt.typname
                        )
                        order by pa.attnum asc
                    )
                from
                    pg_attribute pa
                    join pg_type pt
                        on pa.atttypid = pt.oid
                where
                    attrelid = entity_
                    and attnum > 0
                    and pg_catalog.has_column_privilege(working_role, entity_, pa.attname, 'SELECT')
            )
        )
        -- Add "record" key for insert and update
        || case
            when action in ('INSERT', 'UPDATE') then
                jsonb_build_object(
                    'record',
                    (
                        select
                            jsonb_object_agg(
                                -- if unchanged toast, get column name and value from old record
                                coalesce((c).name, (oc).name),
                                case
                                    when (c).name is null then (oc).value
                                    else (c).value
                                end
                            )
                        from
                            unnest(columns) c
                            full outer join unnest(old_columns) oc
                                on (c).name = (oc).name
                        where
                            coalesce((c).is_selectable, (oc).is_selectable)
                            and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                    )
                )
            else '{}'::jsonb
        end
        -- Add "old_record" key for update and delete
        || case
            when action = 'UPDATE' then
                jsonb_build_object(
                        'old_record',
                        (
                            select jsonb_object_agg((c).name, (c).value)
                            from unnest(old_columns) c
                            where
                                (c).is_selectable
                                and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                        )
                    )
            when action = 'DELETE' then
                jsonb_build_object(
                    'old_record',
                    (
                        select jsonb_object_agg((c).name, (c).value)
                        from unnest(old_columns) c
                        where
                            (c).is_selectable
                            and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                            and ( not is_rls_enabled or (c).is_pkey ) -- if RLS enabled, we can't secure deletes so filter to pkey
                    )
                )
            else '{}'::jsonb
        end;

        -- Create the prepared statement
        if is_rls_enabled and action <> 'DELETE' then
            if (select 1 from pg_prepared_statements where name = 'walrus_rls_stmt' limit 1) > 0 then
                deallocate walrus_rls_stmt;
            end if;
            execute realtime.build_prepared_statement_sql('walrus_rls_stmt', entity_, columns);
        end if;

        visible_to_subscription_ids = '{}';

        for subscription_id, claims in (
                select
                    subs.subscription_id,
                    subs.claims
                from
                    unnest(subscriptions) subs
                where
                    subs.entity = entity_
                    and subs.claims_role = working_role
                    and (
                        realtime.is_visible_through_filters(columns, subs.filters)
                        or (
                          action = 'DELETE'
                          and realtime.is_visible_through_filters(old_columns, subs.filters)
                        )
                    )
        ) loop

            if not is_rls_enabled or action = 'DELETE' then
                visible_to_subscription_ids = visible_to_subscription_ids || subscription_id;
            else
                -- Check if RLS allows the role to see the record
                perform
                    -- Trim leading and trailing quotes from working_role because set_config
                    -- doesn't recognize the role as valid if they are included
                    set_config('role', trim(both '"' from working_role::text), true),
                    set_config('request.jwt.claims', claims::text, true);

                execute 'execute walrus_rls_stmt' into subscription_has_access;

                if subscription_has_access then
                    visible_to_subscription_ids = visible_to_subscription_ids || subscription_id;
                end if;
            end if;
        end loop;

        perform set_config('role', null, true);

        return next (
            output,
            is_rls_enabled,
            visible_to_subscription_ids,
            case
                when error_record_exceeds_max_size then array['Error 413: Payload Too Large']
                else '{}'
            end
        )::realtime.wal_rls;

    end if;
end loop;

perform set_config('role', null, true);
end;
$$;
 G   DROP FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer);
       realtime               supabase_admin    false    1406    18            ~           0    0 7   FUNCTION apply_rls(wal jsonb, max_record_bytes integer)    ACL     <  GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO anon;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO authenticated;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO service_role;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO supabase_realtime_admin;
          realtime               supabase_admin    false    557            3           1255    29253 E   broadcast_changes(text, text, text, text, text, record, record, text)    FUNCTION       CREATE FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text DEFAULT 'ROW'::text) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
    -- Declare a variable to hold the JSONB representation of the row
    row_data jsonb := '{}'::jsonb;
BEGIN
    IF level = 'STATEMENT' THEN
        RAISE EXCEPTION 'function can only be triggered for each row, not for each statement';
    END IF;
    -- Check the operation type and handle accordingly
    IF operation = 'INSERT' OR operation = 'UPDATE' OR operation = 'DELETE' THEN
        row_data := jsonb_build_object('old_record', OLD, 'record', NEW, 'operation', operation, 'table', table_name, 'schema', table_schema);
        PERFORM realtime.send (row_data, event_name, topic_name);
    ELSE
        RAISE EXCEPTION 'Unexpected operation type: %', operation;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE EXCEPTION 'Failed to process the row: %', SQLERRM;
END;

$$;
 �   DROP FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text);
       realtime               supabase_admin    false    18                       0    0 �   FUNCTION broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text)    ACL     v  GRANT ALL ON FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text) TO postgres;
GRANT ALL ON FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text) TO dashboard_user;
          realtime               supabase_admin    false    563            /           1255    29187 C   build_prepared_statement_sql(text, regclass, realtime.wal_column[])    FUNCTION     �  CREATE FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) RETURNS text
    LANGUAGE sql
    AS $$
      /*
      Builds a sql string that, if executed, creates a prepared statement to
      tests retrive a row from *entity* by its primary key columns.
      Example
          select realtime.build_prepared_statement_sql('public.notes', '{"id"}'::text[], '{"bigint"}'::text[])
      */
          select
      'prepare ' || prepared_statement_name || ' as
          select
              exists(
                  select
                      1
                  from
                      ' || entity || '
                  where
                      ' || string_agg(quote_ident(pkc.name) || '=' || quote_nullable(pkc.value #>> '{}') , ' and ') || '
              )'
          from
              unnest(columns) pkc
          where
              pkc.is_pkey
          group by
              entity
      $$;
 �   DROP FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]);
       realtime               supabase_admin    false    1409    18            �           0    0 s   FUNCTION build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[])    ACL     �  GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO postgres;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO anon;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO service_role;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO supabase_realtime_admin;
          realtime               supabase_admin    false    559            +           1255    29137    cast(text, regtype)    FUNCTION       CREATE FUNCTION realtime."cast"(val text, type_ regtype) RETURNS jsonb
    LANGUAGE plpgsql IMMUTABLE
    AS $$
    declare
      res jsonb;
    begin
      execute format('select to_jsonb(%L::'|| type_::text || ')', val)  into res;
      return res;
    end
    $$;
 8   DROP FUNCTION realtime."cast"(val text, type_ regtype);
       realtime               supabase_admin    false    18            �           0    0 (   FUNCTION "cast"(val text, type_ regtype)    ACL     �  GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO postgres;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO dashboard_user;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO anon;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO authenticated;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO service_role;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO supabase_realtime_admin;
          realtime               supabase_admin    false    555            *           1255    29132 <   check_equality_op(realtime.equality_op, regtype, text, text)    FUNCTION     U  CREATE FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) RETURNS boolean
    LANGUAGE plpgsql IMMUTABLE
    AS $$
      /*
      Casts *val_1* and *val_2* as type *type_* and check the *op* condition for truthiness
      */
      declare
          op_symbol text = (
              case
                  when op = 'eq' then '='
                  when op = 'neq' then '!='
                  when op = 'lt' then '<'
                  when op = 'lte' then '<='
                  when op = 'gt' then '>'
                  when op = 'gte' then '>='
                  when op = 'in' then '= any'
                  else 'UNKNOWN OP'
              end
          );
          res boolean;
      begin
          execute format(
              'select %L::'|| type_::text || ' ' || op_symbol
              || ' ( %L::'
              || (
                  case
                      when op = 'in' then type_::text || '[]'
                      else type_::text end
              )
              || ')', val_1, val_2) into res;
          return res;
      end;
      $$;
 j   DROP FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text);
       realtime               supabase_admin    false    18    1388            �           0    0 Z   FUNCTION check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text)    ACL       GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO postgres;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO anon;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO authenticated;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO service_role;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO supabase_realtime_admin;
          realtime               supabase_admin    false    554            .           1255    29183 Q   is_visible_through_filters(realtime.wal_column[], realtime.user_defined_filter[])    FUNCTION     �  CREATE FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$
    /*
    Should the record be visible (true) or filtered out (false) after *filters* are applied
    */
        select
            -- Default to allowed when no filters present
            $2 is null -- no filters. this should not happen because subscriptions has a default
            or array_length($2, 1) is null -- array length of an empty array is null
            or bool_and(
                coalesce(
                    realtime.check_equality_op(
                        op:=f.op,
                        type_:=coalesce(
                            col.type_oid::regtype, -- null when wal2json version <= 2.4
                            col.type_name::regtype
                        ),
                        -- cast jsonb to text
                        val_1:=col.value #>> '{}',
                        val_2:=f.value
                    ),
                    false -- if null, filter does not match
                )
            )
        from
            unnest(filters) f
            join unnest(columns) col
                on f.column_name = col.name;
    $_$;
 z   DROP FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]);
       realtime               supabase_admin    false    18    1409    1391            �           0    0 j   FUNCTION is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[])    ACL     n  GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO postgres;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO anon;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO service_role;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO supabase_realtime_admin;
          realtime               supabase_admin    false    558            0           1255    29194 *   list_changes(name, name, integer, integer)    FUNCTION     �  CREATE FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) RETURNS SETOF realtime.wal_rls
    LANGUAGE sql
    SET log_min_messages TO 'fatal'
    AS $$
      with pub as (
        select
          concat_ws(
            ',',
            case when bool_or(pubinsert) then 'insert' else null end,
            case when bool_or(pubupdate) then 'update' else null end,
            case when bool_or(pubdelete) then 'delete' else null end
          ) as w2j_actions,
          coalesce(
            string_agg(
              realtime.quote_wal2json(format('%I.%I', schemaname, tablename)::regclass),
              ','
            ) filter (where ppt.tablename is not null and ppt.tablename not like '% %'),
            ''
          ) w2j_add_tables
        from
          pg_publication pp
          left join pg_publication_tables ppt
            on pp.pubname = ppt.pubname
        where
          pp.pubname = publication
        group by
          pp.pubname
        limit 1
      ),
      w2j as (
        select
          x.*, pub.w2j_add_tables
        from
          pub,
          pg_logical_slot_get_changes(
            slot_name, null, max_changes,
            'include-pk', 'true',
            'include-transaction', 'false',
            'include-timestamp', 'true',
            'include-type-oids', 'true',
            'format-version', '2',
            'actions', pub.w2j_actions,
            'add-tables', pub.w2j_add_tables
          ) x
      )
      select
        xyz.wal,
        xyz.is_rls_enabled,
        xyz.subscription_ids,
        xyz.errors
      from
        w2j,
        realtime.apply_rls(
          wal := w2j.data::jsonb,
          max_record_bytes := max_record_bytes
        ) xyz(wal, is_rls_enabled, subscription_ids, errors)
      where
        w2j.w2j_add_tables <> ''
        and xyz.subscription_ids[1] is not null
    $$;
 v   DROP FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer);
       realtime               supabase_admin    false    18    1406            �           0    0 f   FUNCTION list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer)    ACL     V  GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO anon;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO authenticated;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO service_role;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO supabase_realtime_admin;
          realtime               supabase_admin    false    560            )           1255    29131    quote_wal2json(regclass)    FUNCTION     �  CREATE FUNCTION realtime.quote_wal2json(entity regclass) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $$
      select
        (
          select string_agg('' || ch,'')
          from unnest(string_to_array(nsp.nspname::text, null)) with ordinality x(ch, idx)
          where
            not (x.idx = 1 and x.ch = '"')
            and not (
              x.idx = array_length(string_to_array(nsp.nspname::text, null), 1)
              and x.ch = '"'
            )
        )
        || '.'
        || (
          select string_agg('' || ch,'')
          from unnest(string_to_array(pc.relname::text, null)) with ordinality x(ch, idx)
          where
            not (x.idx = 1 and x.ch = '"')
            and not (
              x.idx = array_length(string_to_array(nsp.nspname::text, null), 1)
              and x.ch = '"'
            )
          )
      from
        pg_class pc
        join pg_namespace nsp
          on pc.relnamespace = nsp.oid
      where
        pc.oid = entity
    $$;
 8   DROP FUNCTION realtime.quote_wal2json(entity regclass);
       realtime               supabase_admin    false    18            �           0    0 (   FUNCTION quote_wal2json(entity regclass)    ACL     �  GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO postgres;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO anon;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO authenticated;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO service_role;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO supabase_realtime_admin;
          realtime               supabase_admin    false    553            2           1255    29252     send(jsonb, text, text, boolean)    FUNCTION       CREATE FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  BEGIN
    -- Set the topic configuration
    EXECUTE format('SET LOCAL realtime.topic TO %L', topic);

    -- Attempt to insert the message
    INSERT INTO realtime.messages (payload, event, topic, private, extension)
    VALUES (payload, event, topic, private, 'broadcast');
  EXCEPTION
    WHEN OTHERS THEN
      -- Capture and notify the error
      PERFORM pg_notify(
          'realtime:system',
          jsonb_build_object(
              'error', SQLERRM,
              'function', 'realtime.send',
              'event', event,
              'topic', topic,
              'private', private
          )::text
      );
  END;
END;
$$;
 U   DROP FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean);
       realtime               supabase_admin    false    18            �           0    0 E   FUNCTION send(payload jsonb, event text, topic text, private boolean)    ACL     �   GRANT ALL ON FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean) TO postgres;
GRANT ALL ON FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean) TO dashboard_user;
          realtime               supabase_admin    false    562            (           1255    29129    subscription_check_filters()    FUNCTION     <
  CREATE FUNCTION realtime.subscription_check_filters() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    /*
    Validates that the user defined filters for a subscription:
    - refer to valid columns that the claimed role may access
    - values are coercable to the correct column type
    */
    declare
        col_names text[] = coalesce(
                array_agg(c.column_name order by c.ordinal_position),
                '{}'::text[]
            )
            from
                information_schema.columns c
            where
                format('%I.%I', c.table_schema, c.table_name)::regclass = new.entity
                and pg_catalog.has_column_privilege(
                    (new.claims ->> 'role'),
                    format('%I.%I', c.table_schema, c.table_name)::regclass,
                    c.column_name,
                    'SELECT'
                );
        filter realtime.user_defined_filter;
        col_type regtype;

        in_val jsonb;
    begin
        for filter in select * from unnest(new.filters) loop
            -- Filtered column is valid
            if not filter.column_name = any(col_names) then
                raise exception 'invalid column for filter %', filter.column_name;
            end if;

            -- Type is sanitized and safe for string interpolation
            col_type = (
                select atttypid::regtype
                from pg_catalog.pg_attribute
                where attrelid = new.entity
                      and attname = filter.column_name
            );
            if col_type is null then
                raise exception 'failed to lookup type for column %', filter.column_name;
            end if;

            -- Set maximum number of entries for in filter
            if filter.op = 'in'::realtime.equality_op then
                in_val = realtime.cast(filter.value, (col_type::text || '[]')::regtype);
                if coalesce(jsonb_array_length(in_val), 0) > 100 then
                    raise exception 'too many values for `in` filter. Maximum 100';
                end if;
            else
                -- raises an exception if value is not coercable to type
                perform realtime.cast(filter.value, col_type);
            end if;

        end loop;

        -- Apply consistent order to filters so the unique constraint on
        -- (subscription_id, entity, filters) can't be tricked by a different filter order
        new.filters = coalesce(
            array_agg(f order by f.column_name, f.op, f.value),
            '{}'
        ) from unnest(new.filters) f;

        return new;
    end;
    $$;
 5   DROP FUNCTION realtime.subscription_check_filters();
       realtime               supabase_admin    false    18            �           0    0 %   FUNCTION subscription_check_filters()    ACL     �  GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO postgres;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO dashboard_user;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO anon;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO authenticated;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO service_role;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO supabase_realtime_admin;
          realtime               supabase_admin    false    552            ,           1255    29164    to_regrole(text)    FUNCTION     �   CREATE FUNCTION realtime.to_regrole(role_name text) RETURNS regrole
    LANGUAGE sql IMMUTABLE
    AS $$ select role_name::regrole $$;
 3   DROP FUNCTION realtime.to_regrole(role_name text);
       realtime               supabase_admin    false    18            �           0    0 #   FUNCTION to_regrole(role_name text)    ACL     �  GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO postgres;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO anon;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO authenticated;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO service_role;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO supabase_realtime_admin;
          realtime               supabase_admin    false    556            1           1255    29246    topic()    FUNCTION     �   CREATE FUNCTION realtime.topic() RETURNS text
    LANGUAGE sql STABLE
    AS $$
select nullif(current_setting('realtime.topic', true), '')::text;
$$;
     DROP FUNCTION realtime.topic();
       realtime               supabase_realtime_admin    false    18            �           0    0    FUNCTION topic()    ACL     n   GRANT ALL ON FUNCTION realtime.topic() TO postgres;
GRANT ALL ON FUNCTION realtime.topic() TO dashboard_user;
          realtime               supabase_realtime_admin    false    561            $           1255    29034 *   can_insert_object(text, text, uuid, jsonb)    FUNCTION     �  CREATE FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO "storage"."objects" ("bucket_id", "name", "owner", "metadata") VALUES (bucketid, name, owner, metadata);
  -- hack to rollback the successful insert
  RAISE sqlstate 'PT200' using
  message = 'ROLLBACK',
  detail = 'rollback successful insert';
END
$$;
 _   DROP FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb);
       storage               supabase_storage_admin    false    16                        1255    29008    extension(text)    FUNCTION     Z  CREATE FUNCTION storage.extension(name text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
_filename text;
BEGIN
	select string_to_array(name, '/') into _parts;
	select _parts[array_length(_parts,1)] into _filename;
	-- @todo return the last part instead of 2
	return reverse(split_part(reverse(_filename), '.', 1));
END
$$;
 ,   DROP FUNCTION storage.extension(name text);
       storage               supabase_storage_admin    false    16                       1255    29007    filename(text)    FUNCTION     �   CREATE FUNCTION storage.filename(name text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
BEGIN
	select string_to_array(name, '/') into _parts;
	return _parts[array_length(_parts,1)];
END
$$;
 +   DROP FUNCTION storage.filename(name text);
       storage               supabase_storage_admin    false    16                       1255    29006    foldername(text)    FUNCTION     �   CREATE FUNCTION storage.foldername(name text) RETURNS text[]
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
BEGIN
	select string_to_array(name, '/') into _parts;
	return _parts[1:array_length(_parts,1)-1];
END
$$;
 -   DROP FUNCTION storage.foldername(name text);
       storage               supabase_storage_admin    false    16            !           1255    29020    get_size_by_bucket()    FUNCTION        CREATE FUNCTION storage.get_size_by_bucket() RETURNS TABLE(size bigint, bucket_id text)
    LANGUAGE plpgsql
    AS $$
BEGIN
    return query
        select sum((metadata->>'size')::int) as size, obj.bucket_id
        from "storage".objects as obj
        group by obj.bucket_id;
END
$$;
 ,   DROP FUNCTION storage.get_size_by_bucket();
       storage               supabase_storage_admin    false    16            &           1255    29073 L   list_multipart_uploads_with_delimiter(text, text, text, integer, text, text)    FUNCTION     9  CREATE FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, next_key_token text DEFAULT ''::text, next_upload_token text DEFAULT ''::text) RETURNS TABLE(key text, id text, created_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(key COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                        substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1)))
                    ELSE
                        key
                END AS key, id, created_at
            FROM
                storage.s3_multipart_uploads
            WHERE
                bucket_id = $5 AND
                key ILIKE $1 || ''%'' AND
                CASE
                    WHEN $4 != '''' AND $6 = '''' THEN
                        CASE
                            WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                                substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                key COLLATE "C" > $4
                            END
                    ELSE
                        true
                END AND
                CASE
                    WHEN $6 != '''' THEN
                        id COLLATE "C" > $6
                    ELSE
                        true
                    END
            ORDER BY
                key COLLATE "C" ASC, created_at ASC) as e order by key COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_key_token, bucket_id, next_upload_token;
END;
$_$;
 �   DROP FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, next_key_token text, next_upload_token text);
       storage               supabase_storage_admin    false    16            %           1255    29036 B   list_objects_with_delimiter(text, text, text, integer, text, text)    FUNCTION     �  CREATE FUNCTION storage.list_objects_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, start_after text DEFAULT ''::text, next_token text DEFAULT ''::text) RETURNS TABLE(name text, id uuid, metadata jsonb, updated_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(name COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(name from length($1) + 1)) > 0 THEN
                        substring(name from 1 for length($1) + position($2 IN substring(name from length($1) + 1)))
                    ELSE
                        name
                END AS name, id, metadata, updated_at
            FROM
                storage.objects
            WHERE
                bucket_id = $5 AND
                name ILIKE $1 || ''%'' AND
                CASE
                    WHEN $6 != '''' THEN
                    name COLLATE "C" > $6
                ELSE true END
                AND CASE
                    WHEN $4 != '''' THEN
                        CASE
                            WHEN position($2 IN substring(name from length($1) + 1)) > 0 THEN
                                substring(name from 1 for length($1) + position($2 IN substring(name from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                name COLLATE "C" > $4
                            END
                    ELSE
                        true
                END
            ORDER BY
                name COLLATE "C" ASC) as e order by name COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_token, bucket_id, start_after;
END;
$_$;
 �   DROP FUNCTION storage.list_objects_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, start_after text, next_token text);
       storage               supabase_storage_admin    false    16            '           1255    29089    operation()    FUNCTION     �   CREATE FUNCTION storage.operation() RETURNS text
    LANGUAGE plpgsql STABLE
    AS $$
BEGIN
    RETURN current_setting('storage.operation', true);
END;
$$;
 #   DROP FUNCTION storage.operation();
       storage               supabase_storage_admin    false    16            "           1255    29023 ?   search(text, text, integer, integer, integer, text, text, text)    FUNCTION       CREATE FUNCTION storage.search(prefix text, bucketname text, limits integer DEFAULT 100, levels integer DEFAULT 1, offsets integer DEFAULT 0, search text DEFAULT ''::text, sortcolumn text DEFAULT 'name'::text, sortorder text DEFAULT 'asc'::text) RETURNS TABLE(name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $_$
declare
  v_order_by text;
  v_sort_order text;
begin
  case
    when sortcolumn = 'name' then
      v_order_by = 'name';
    when sortcolumn = 'updated_at' then
      v_order_by = 'updated_at';
    when sortcolumn = 'created_at' then
      v_order_by = 'created_at';
    when sortcolumn = 'last_accessed_at' then
      v_order_by = 'last_accessed_at';
    else
      v_order_by = 'name';
  end case;

  case
    when sortorder = 'asc' then
      v_sort_order = 'asc';
    when sortorder = 'desc' then
      v_sort_order = 'desc';
    else
      v_sort_order = 'asc';
  end case;

  v_order_by = v_order_by || ' ' || v_sort_order;

  return query execute
    'with folders as (
       select path_tokens[$1] as folder
       from storage.objects
         where objects.name ilike $2 || $3 || ''%''
           and bucket_id = $4
           and array_length(objects.path_tokens, 1) <> $1
       group by folder
       order by folder ' || v_sort_order || '
     )
     (select folder as "name",
            null as id,
            null as updated_at,
            null as created_at,
            null as last_accessed_at,
            null as metadata from folders)
     union all
     (select path_tokens[$1] as "name",
            id,
            updated_at,
            created_at,
            last_accessed_at,
            metadata
     from storage.objects
     where objects.name ilike $2 || $3 || ''%''
       and bucket_id = $4
       and array_length(objects.path_tokens, 1) = $1
     order by ' || v_order_by || ')
     limit $5
     offset $6' using levels, prefix, search, bucketname, limits, offsets;
end;
$_$;
 �   DROP FUNCTION storage.search(prefix text, bucketname text, limits integer, levels integer, offsets integer, search text, sortcolumn text, sortorder text);
       storage               supabase_storage_admin    false    16            #           1255    29024    update_updated_at_column()    FUNCTION     �   CREATE FUNCTION storage.update_updated_at_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW; 
END;
$$;
 2   DROP FUNCTION storage.update_updated_at_column();
       storage               supabase_storage_admin    false    16            >           1255    31221    http_request()    FUNCTION     �  CREATE FUNCTION supabase_functions.http_request() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'supabase_functions'
    AS $$
    DECLARE
      request_id bigint;
      payload jsonb;
      url text := TG_ARGV[0]::text;
      method text := TG_ARGV[1]::text;
      headers jsonb DEFAULT '{}'::jsonb;
      params jsonb DEFAULT '{}'::jsonb;
      timeout_ms integer DEFAULT 1000;
    BEGIN
      IF url IS NULL OR url = 'null' THEN
        RAISE EXCEPTION 'url argument is missing';
      END IF;

      IF method IS NULL OR method = 'null' THEN
        RAISE EXCEPTION 'method argument is missing';
      END IF;

      IF TG_ARGV[2] IS NULL OR TG_ARGV[2] = 'null' THEN
        headers = '{"Content-Type": "application/json"}'::jsonb;
      ELSE
        headers = TG_ARGV[2]::jsonb;
      END IF;

      IF TG_ARGV[3] IS NULL OR TG_ARGV[3] = 'null' THEN
        params = '{}'::jsonb;
      ELSE
        params = TG_ARGV[3]::jsonb;
      END IF;

      IF TG_ARGV[4] IS NULL OR TG_ARGV[4] = 'null' THEN
        timeout_ms = 1000;
      ELSE
        timeout_ms = TG_ARGV[4]::integer;
      END IF;

      CASE
        WHEN method = 'GET' THEN
          SELECT http_get INTO request_id FROM net.http_get(
            url,
            params,
            headers,
            timeout_ms
          );
        WHEN method = 'POST' THEN
          payload = jsonb_build_object(
            'old_record', OLD,
            'record', NEW,
            'type', TG_OP,
            'table', TG_TABLE_NAME,
            'schema', TG_TABLE_SCHEMA
          );

          SELECT http_post INTO request_id FROM net.http_post(
            url,
            payload,
            params,
            headers,
            timeout_ms
          );
        ELSE
          RAISE EXCEPTION 'method argument % is invalid', method;
      END CASE;

      INSERT INTO supabase_functions.hooks
        (hook_table_id, hook_name, request_id)
      VALUES
        (TG_RELID, TG_NAME, request_id);

      RETURN NEW;
    END
  $$;
 1   DROP FUNCTION supabase_functions.http_request();
       supabase_functions               supabase_functions_admin    false    32            �           0    0    FUNCTION http_request()    ACL     _  REVOKE ALL ON FUNCTION supabase_functions.http_request() FROM PUBLIC;
GRANT ALL ON FUNCTION supabase_functions.http_request() TO postgres;
GRANT ALL ON FUNCTION supabase_functions.http_request() TO anon;
GRANT ALL ON FUNCTION supabase_functions.http_request() TO authenticated;
GRANT ALL ON FUNCTION supabase_functions.http_request() TO service_role;
          supabase_functions               supabase_functions_admin    false    574                       1255    16974    secrets_encrypt_secret_secret()    FUNCTION     (  CREATE FUNCTION vault.secrets_encrypt_secret_secret() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
		BEGIN
		        new.secret = CASE WHEN new.secret IS NULL THEN NULL ELSE
			CASE WHEN new.key_id IS NULL THEN NULL ELSE pg_catalog.encode(
			  pgsodium.crypto_aead_det_encrypt(
				pg_catalog.convert_to(new.secret, 'utf8'),
				pg_catalog.convert_to((new.id::text || new.description::text || new.created_at::text || new.updated_at::text)::text, 'utf8'),
				new.key_id::uuid,
				new.nonce
			  ),
				'base64') END END;
		RETURN new;
		END;
		$$;
 5   DROP FUNCTION vault.secrets_encrypt_secret_secret();
       vault               supabase_admin    false    22            �            1259    16519    audit_log_entries    TABLE     �   CREATE TABLE auth.audit_log_entries (
    instance_id uuid,
    id uuid NOT NULL,
    payload json,
    created_at timestamp with time zone,
    ip_address character varying(64) DEFAULT ''::character varying NOT NULL
);
 #   DROP TABLE auth.audit_log_entries;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE audit_log_entries    COMMENT     R   COMMENT ON TABLE auth.audit_log_entries IS 'Auth: Audit trail for user actions.';
          auth               supabase_auth_admin    false    251            �           0    0    TABLE audit_log_entries    ACL     !  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.audit_log_entries TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.audit_log_entries TO postgres;
GRANT SELECT ON TABLE auth.audit_log_entries TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    251                       1259    28931 
   flow_state    TABLE     �  CREATE TABLE auth.flow_state (
    id uuid NOT NULL,
    user_id uuid,
    auth_code text NOT NULL,
    code_challenge_method auth.code_challenge_method NOT NULL,
    code_challenge text NOT NULL,
    provider_type text NOT NULL,
    provider_access_token text,
    provider_refresh_token text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    authentication_method text NOT NULL,
    auth_code_issued_at timestamp with time zone
);
    DROP TABLE auth.flow_state;
       auth         heap r       supabase_auth_admin    false    17    1367            �           0    0    TABLE flow_state    COMMENT     G   COMMENT ON TABLE auth.flow_state IS 'stores metadata for pkce logins';
          auth               supabase_auth_admin    false    281            �           0    0    TABLE flow_state    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.flow_state TO postgres;
GRANT SELECT ON TABLE auth.flow_state TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.flow_state TO dashboard_user;
          auth               supabase_auth_admin    false    281                       1259    28728 
   identities    TABLE     �  CREATE TABLE auth.identities (
    provider_id text NOT NULL,
    user_id uuid NOT NULL,
    identity_data jsonb NOT NULL,
    provider text NOT NULL,
    last_sign_in_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    email text GENERATED ALWAYS AS (lower((identity_data ->> 'email'::text))) STORED,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);
    DROP TABLE auth.identities;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE identities    COMMENT     U   COMMENT ON TABLE auth.identities IS 'Auth: Stores identities associated to a user.';
          auth               supabase_auth_admin    false    272            �           0    0    COLUMN identities.email    COMMENT     �   COMMENT ON COLUMN auth.identities.email IS 'Auth: Email is a generated column that references the optional email property in the identity_data';
          auth               supabase_auth_admin    false    272            �           0    0    TABLE identities    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.identities TO postgres;
GRANT SELECT ON TABLE auth.identities TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.identities TO dashboard_user;
          auth               supabase_auth_admin    false    272            �            1259    16512 	   instances    TABLE     �   CREATE TABLE auth.instances (
    id uuid NOT NULL,
    uuid uuid,
    raw_base_config text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE auth.instances;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE instances    COMMENT     Q   COMMENT ON TABLE auth.instances IS 'Auth: Manages users across multiple sites.';
          auth               supabase_auth_admin    false    250            �           0    0    TABLE instances    ACL     	  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.instances TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.instances TO postgres;
GRANT SELECT ON TABLE auth.instances TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    250                       1259    28818    mfa_amr_claims    TABLE     �   CREATE TABLE auth.mfa_amr_claims (
    session_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    authentication_method text NOT NULL,
    id uuid NOT NULL
);
     DROP TABLE auth.mfa_amr_claims;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE mfa_amr_claims    COMMENT     ~   COMMENT ON TABLE auth.mfa_amr_claims IS 'auth: stores authenticator method reference claims for multi factor authentication';
          auth               supabase_auth_admin    false    276            �           0    0    TABLE mfa_amr_claims    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_amr_claims TO postgres;
GRANT SELECT ON TABLE auth.mfa_amr_claims TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_amr_claims TO dashboard_user;
          auth               supabase_auth_admin    false    276                       1259    28806    mfa_challenges    TABLE       CREATE TABLE auth.mfa_challenges (
    id uuid NOT NULL,
    factor_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    verified_at timestamp with time zone,
    ip_address inet NOT NULL,
    otp_code text,
    web_authn_session_data jsonb
);
     DROP TABLE auth.mfa_challenges;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE mfa_challenges    COMMENT     _   COMMENT ON TABLE auth.mfa_challenges IS 'auth: stores metadata about challenge requests made';
          auth               supabase_auth_admin    false    275            �           0    0    TABLE mfa_challenges    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_challenges TO postgres;
GRANT SELECT ON TABLE auth.mfa_challenges TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_challenges TO dashboard_user;
          auth               supabase_auth_admin    false    275                       1259    28793    mfa_factors    TABLE     �  CREATE TABLE auth.mfa_factors (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    friendly_name text,
    factor_type auth.factor_type NOT NULL,
    status auth.factor_status NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    secret text,
    phone text,
    last_challenged_at timestamp with time zone,
    web_authn_credential jsonb,
    web_authn_aaguid uuid
);
    DROP TABLE auth.mfa_factors;
       auth         heap r       supabase_auth_admin    false    1337    17    1340            �           0    0    TABLE mfa_factors    COMMENT     L   COMMENT ON TABLE auth.mfa_factors IS 'auth: stores metadata about factors';
          auth               supabase_auth_admin    false    274            �           0    0    TABLE mfa_factors    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_factors TO postgres;
GRANT SELECT ON TABLE auth.mfa_factors TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_factors TO dashboard_user;
          auth               supabase_auth_admin    false    274                       1259    28981    one_time_tokens    TABLE     �  CREATE TABLE auth.one_time_tokens (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    token_type auth.one_time_token_type NOT NULL,
    token_hash text NOT NULL,
    relates_to text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    CONSTRAINT one_time_tokens_token_hash_check CHECK ((char_length(token_hash) > 0))
);
 !   DROP TABLE auth.one_time_tokens;
       auth         heap r       supabase_auth_admin    false    17    1373            �           0    0    TABLE one_time_tokens    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.one_time_tokens TO postgres;
GRANT SELECT ON TABLE auth.one_time_tokens TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.one_time_tokens TO dashboard_user;
          auth               supabase_auth_admin    false    282            �            1259    16501    refresh_tokens    TABLE     8  CREATE TABLE auth.refresh_tokens (
    instance_id uuid,
    id bigint NOT NULL,
    token character varying(255),
    user_id character varying(255),
    revoked boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    parent character varying(255),
    session_id uuid
);
     DROP TABLE auth.refresh_tokens;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE refresh_tokens    COMMENT     n   COMMENT ON TABLE auth.refresh_tokens IS 'Auth: Store of tokens used to refresh JWT tokens once they expire.';
          auth               supabase_auth_admin    false    249            �           0    0    TABLE refresh_tokens    ACL       GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.refresh_tokens TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.refresh_tokens TO postgres;
GRANT SELECT ON TABLE auth.refresh_tokens TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    249            �            1259    16500    refresh_tokens_id_seq    SEQUENCE     |   CREATE SEQUENCE auth.refresh_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE auth.refresh_tokens_id_seq;
       auth               supabase_auth_admin    false    17    249            �           0    0    refresh_tokens_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE auth.refresh_tokens_id_seq OWNED BY auth.refresh_tokens.id;
          auth               supabase_auth_admin    false    248            �           0    0    SEQUENCE refresh_tokens_id_seq    ACL     �   GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO dashboard_user;
GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO postgres;
          auth               supabase_auth_admin    false    248                       1259    28860    saml_providers    TABLE     H  CREATE TABLE auth.saml_providers (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    entity_id text NOT NULL,
    metadata_xml text NOT NULL,
    metadata_url text,
    attribute_mapping jsonb,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name_id_format text,
    CONSTRAINT "entity_id not empty" CHECK ((char_length(entity_id) > 0)),
    CONSTRAINT "metadata_url not empty" CHECK (((metadata_url = NULL::text) OR (char_length(metadata_url) > 0))),
    CONSTRAINT "metadata_xml not empty" CHECK ((char_length(metadata_xml) > 0))
);
     DROP TABLE auth.saml_providers;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE saml_providers    COMMENT     ]   COMMENT ON TABLE auth.saml_providers IS 'Auth: Manages SAML Identity Provider connections.';
          auth               supabase_auth_admin    false    279            �           0    0    TABLE saml_providers    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_providers TO postgres;
GRANT SELECT ON TABLE auth.saml_providers TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_providers TO dashboard_user;
          auth               supabase_auth_admin    false    279                       1259    28878    saml_relay_states    TABLE     `  CREATE TABLE auth.saml_relay_states (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    request_id text NOT NULL,
    for_email text,
    redirect_to text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    flow_state_id uuid,
    CONSTRAINT "request_id not empty" CHECK ((char_length(request_id) > 0))
);
 #   DROP TABLE auth.saml_relay_states;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE saml_relay_states    COMMENT     �   COMMENT ON TABLE auth.saml_relay_states IS 'Auth: Contains SAML Relay State information for each Service Provider initiated login.';
          auth               supabase_auth_admin    false    280            �           0    0    TABLE saml_relay_states    ACL     !  GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_relay_states TO postgres;
GRANT SELECT ON TABLE auth.saml_relay_states TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_relay_states TO dashboard_user;
          auth               supabase_auth_admin    false    280            �            1259    16527    schema_migrations    TABLE     U   CREATE TABLE auth.schema_migrations (
    version character varying(255) NOT NULL
);
 #   DROP TABLE auth.schema_migrations;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE schema_migrations    COMMENT     X   COMMENT ON TABLE auth.schema_migrations IS 'Auth: Manages updates to the auth system.';
          auth               supabase_auth_admin    false    252            �           0    0    TABLE schema_migrations    ACL     !  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.schema_migrations TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.schema_migrations TO postgres;
GRANT SELECT ON TABLE auth.schema_migrations TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    252                       1259    28758    sessions    TABLE     T  CREATE TABLE auth.sessions (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    factor_id uuid,
    aal auth.aal_level,
    not_after timestamp with time zone,
    refreshed_at timestamp without time zone,
    user_agent text,
    ip inet,
    tag text
);
    DROP TABLE auth.sessions;
       auth         heap r       supabase_auth_admin    false    1343    17            �           0    0    TABLE sessions    COMMENT     U   COMMENT ON TABLE auth.sessions IS 'Auth: Stores session data associated to a user.';
          auth               supabase_auth_admin    false    273            �           0    0    COLUMN sessions.not_after    COMMENT     �   COMMENT ON COLUMN auth.sessions.not_after IS 'Auth: Not after is a nullable column that contains a timestamp after which the session should be regarded as expired.';
          auth               supabase_auth_admin    false    273            �           0    0    TABLE sessions    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sessions TO postgres;
GRANT SELECT ON TABLE auth.sessions TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sessions TO dashboard_user;
          auth               supabase_auth_admin    false    273                       1259    28845    sso_domains    TABLE       CREATE TABLE auth.sso_domains (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    domain text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "domain not empty" CHECK ((char_length(domain) > 0))
);
    DROP TABLE auth.sso_domains;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE sso_domains    COMMENT     t   COMMENT ON TABLE auth.sso_domains IS 'Auth: Manages SSO email address domain mapping to an SSO Identity Provider.';
          auth               supabase_auth_admin    false    278            �           0    0    TABLE sso_domains    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_domains TO postgres;
GRANT SELECT ON TABLE auth.sso_domains TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_domains TO dashboard_user;
          auth               supabase_auth_admin    false    278                       1259    28836    sso_providers    TABLE       CREATE TABLE auth.sso_providers (
    id uuid NOT NULL,
    resource_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "resource_id not empty" CHECK (((resource_id = NULL::text) OR (char_length(resource_id) > 0)))
);
    DROP TABLE auth.sso_providers;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE sso_providers    COMMENT     x   COMMENT ON TABLE auth.sso_providers IS 'Auth: Manages SSO identity provider information; see saml_providers for SAML.';
          auth               supabase_auth_admin    false    277            �           0    0     COLUMN sso_providers.resource_id    COMMENT     �   COMMENT ON COLUMN auth.sso_providers.resource_id IS 'Auth: Uniquely identifies a SSO provider according to a user-chosen resource ID (case insensitive), useful in infrastructure as code.';
          auth               supabase_auth_admin    false    277            �           0    0    TABLE sso_providers    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_providers TO postgres;
GRANT SELECT ON TABLE auth.sso_providers TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_providers TO dashboard_user;
          auth               supabase_auth_admin    false    277            �            1259    16489    users    TABLE     4  CREATE TABLE auth.users (
    instance_id uuid,
    id uuid NOT NULL,
    aud character varying(255),
    role character varying(255),
    email character varying(255),
    encrypted_password character varying(255),
    email_confirmed_at timestamp with time zone,
    invited_at timestamp with time zone,
    confirmation_token character varying(255),
    confirmation_sent_at timestamp with time zone,
    recovery_token character varying(255),
    recovery_sent_at timestamp with time zone,
    email_change_token_new character varying(255),
    email_change character varying(255),
    email_change_sent_at timestamp with time zone,
    last_sign_in_at timestamp with time zone,
    raw_app_meta_data jsonb,
    raw_user_meta_data jsonb,
    is_super_admin boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    phone text DEFAULT NULL::character varying,
    phone_confirmed_at timestamp with time zone,
    phone_change text DEFAULT ''::character varying,
    phone_change_token character varying(255) DEFAULT ''::character varying,
    phone_change_sent_at timestamp with time zone,
    confirmed_at timestamp with time zone GENERATED ALWAYS AS (LEAST(email_confirmed_at, phone_confirmed_at)) STORED,
    email_change_token_current character varying(255) DEFAULT ''::character varying,
    email_change_confirm_status smallint DEFAULT 0,
    banned_until timestamp with time zone,
    reauthentication_token character varying(255) DEFAULT ''::character varying,
    reauthentication_sent_at timestamp with time zone,
    is_sso_user boolean DEFAULT false NOT NULL,
    deleted_at timestamp with time zone,
    is_anonymous boolean DEFAULT false NOT NULL,
    CONSTRAINT users_email_change_confirm_status_check CHECK (((email_change_confirm_status >= 0) AND (email_change_confirm_status <= 2)))
);
    DROP TABLE auth.users;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE users    COMMENT     W   COMMENT ON TABLE auth.users IS 'Auth: Stores user login data within a secure schema.';
          auth               supabase_auth_admin    false    247            �           0    0    COLUMN users.is_sso_user    COMMENT     �   COMMENT ON COLUMN auth.users.is_sso_user IS 'Auth: Set this column to true when the account comes from SSO. These accounts can have duplicate emails.';
          auth               supabase_auth_admin    false    247            �           0    0    TABLE users    ACL     �   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.users TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.users TO postgres;
GRANT SELECT ON TABLE auth.users TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    247            �           0    0    TABLE pg_stat_statements    ACL     q  REVOKE SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements FROM postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements TO dashboard_user;
       
   extensions               postgres    false    246            �           0    0    TABLE pg_stat_statements_info    ACL     �  REVOKE SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements_info FROM postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements_info TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements_info TO dashboard_user;
       
   extensions               postgres    false    245            �           0    0    TABLE decrypted_key    ACL     u   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE pgsodium.decrypted_key TO pgsodium_keyholder;
          pgsodium               supabase_admin    false    268            �           0    0    TABLE masking_rule    ACL     t   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE pgsodium.masking_rule TO pgsodium_keyholder;
          pgsodium               supabase_admin    false    266            �           0    0    TABLE mask_columns    ACL     t   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE pgsodium.mask_columns TO pgsodium_keyholder;
          pgsodium               supabase_admin    false    267            9           1259    38209    blockchain_ledger    TABLE     �   CREATE TABLE public.blockchain_ledger (
    id integer NOT NULL,
    tx_hash text NOT NULL,
    tx_data jsonb NOT NULL,
    block_height integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);
 %   DROP TABLE public.blockchain_ledger;
       public         heap r       postgres    false            �           0    0    TABLE blockchain_ledger    ACL     L  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.blockchain_ledger TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.blockchain_ledger TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.blockchain_ledger TO service_role;
          public               postgres    false    313            8           1259    38208    blockchain_ledger_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blockchain_ledger_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.blockchain_ledger_id_seq;
       public               postgres    false    313            �           0    0    blockchain_ledger_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.blockchain_ledger_id_seq OWNED BY public.blockchain_ledger.id;
          public               postgres    false    312            �           0    0 !   SEQUENCE blockchain_ledger_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.blockchain_ledger_id_seq TO anon;
GRANT ALL ON SEQUENCE public.blockchain_ledger_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.blockchain_ledger_id_seq TO service_role;
          public               postgres    false    312            )           1259    29443    drug_status_updates    TABLE     d  CREATE TABLE public.drug_status_updates (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    drug_id text NOT NULL,
    status text NOT NULL,
    location text NOT NULL,
    updated_by uuid NOT NULL,
    blockchain_tx_id text NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now(),
    status_timestamp timestamp with time zone DEFAULT now()
);
 '   DROP TABLE public.drug_status_updates;
       public         heap r       postgres    false            �           0    0    TABLE drug_status_updates    ACL     R  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.drug_status_updates TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.drug_status_updates TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.drug_status_updates TO service_role;
          public               postgres    false    297            (           1259    29442    drug_status_updates_id_seq    SEQUENCE     �   CREATE SEQUENCE public.drug_status_updates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.drug_status_updates_id_seq;
       public               postgres    false    297            �           0    0    drug_status_updates_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.drug_status_updates_id_seq OWNED BY public.drug_status_updates.id;
          public               postgres    false    296            �           0    0 #   SEQUENCE drug_status_updates_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.drug_status_updates_id_seq TO anon;
GRANT ALL ON SEQUENCE public.drug_status_updates_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.drug_status_updates_id_seq TO service_role;
          public               postgres    false    296            '           1259    29392    drugs    TABLE     0  CREATE TABLE public.drugs (
    drug_id text NOT NULL,
    name text NOT NULL,
    manufacturer text NOT NULL,
    manufacture_date text NOT NULL,
    expiry_date text NOT NULL,
    batch_number text NOT NULL,
    blockchain_tx_id text NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now()
);
    DROP TABLE public.drugs;
       public         heap r       postgres    false            �           0    0    TABLE drugs    ACL     (  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.drugs TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.drugs TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.drugs TO service_role;
          public               postgres    false    295            %           1259    29304    health_check    TABLE     �   CREATE TABLE public.health_check (
    id integer NOT NULL,
    status text NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now()
);
     DROP TABLE public.health_check;
       public         heap r       postgres    false            �           0    0    TABLE health_check    ACL     =  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.health_check TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.health_check TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.health_check TO service_role;
          public               postgres    false    293            $           1259    29303    health_check_id_seq    SEQUENCE     �   CREATE SEQUENCE public.health_check_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.health_check_id_seq;
       public               postgres    false    293            �           0    0    health_check_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.health_check_id_seq OWNED BY public.health_check.id;
          public               postgres    false    292            �           0    0    SEQUENCE health_check_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.health_check_id_seq TO anon;
GRANT ALL ON SEQUENCE public.health_check_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.health_check_id_seq TO service_role;
          public               postgres    false    292            -           1259    29604    prescriptions    TABLE     �  CREATE TABLE public.prescriptions (
    prescription_id text NOT NULL,
    patient_id uuid NOT NULL,
    doctor_id uuid NOT NULL,
    drug_ids text NOT NULL,
    issue_date text NOT NULL,
    expiry_date text NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now(),
    dispensed boolean DEFAULT false,
    dispensed_by uuid,
    dispensed_at timestamp with time zone,
    notes text DEFAULT ''::text
);
 !   DROP TABLE public.prescriptions;
       public         heap r       postgres    false            �           0    0    TABLE prescriptions    ACL     @  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.prescriptions TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.prescriptions TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.prescriptions TO service_role;
          public               postgres    false    301            ,           1259    29543    shipment_status_updates    TABLE       CREATE TABLE public.shipment_status_updates (
    id integer NOT NULL,
    shipment_id text NOT NULL,
    status text NOT NULL,
    location text NOT NULL,
    updated_by uuid NOT NULL,
    blockchain_tx_id text NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now()
);
 +   DROP TABLE public.shipment_status_updates;
       public         heap r       postgres    false            �           0    0    TABLE shipment_status_updates    ACL     ^  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.shipment_status_updates TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.shipment_status_updates TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.shipment_status_updates TO service_role;
          public               postgres    false    300            +           1259    29542    shipment_status_updates_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shipment_status_updates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.shipment_status_updates_id_seq;
       public               postgres    false    300            �           0    0    shipment_status_updates_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.shipment_status_updates_id_seq OWNED BY public.shipment_status_updates.id;
          public               postgres    false    299            �           0    0 '   SEQUENCE shipment_status_updates_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.shipment_status_updates_id_seq TO anon;
GRANT ALL ON SEQUENCE public.shipment_status_updates_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.shipment_status_updates_id_seq TO service_role;
          public               postgres    false    299            *           1259    29504 	   shipments    TABLE     e  CREATE TABLE public.shipments (
    shipment_id text NOT NULL,
    drug_ids text NOT NULL,
    sender uuid NOT NULL,
    receiver uuid NOT NULL,
    status text NOT NULL,
    ship_date text NOT NULL,
    blockchain_tx_id text NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now(),
    shipment_timestamp timestamp with time zone DEFAULT now()
);
    DROP TABLE public.shipments;
       public         heap r       postgres    false            �           0    0    TABLE shipments    ACL     4  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.shipments TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.shipments TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.shipments TO service_role;
          public               postgres    false    298            &           1259    29336    users    TABLE     �  CREATE TABLE public.users (
    id uuid NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    role text NOT NULL,
    active boolean DEFAULT true,
    created_at timestamp with time zone DEFAULT now(),
    CONSTRAINT proper_email CHECK ((email ~~ '%@%.%'::text)),
    CONSTRAINT users_role_check CHECK ((role = ANY (ARRAY['manufacturer'::text, 'distributor'::text, 'wholesaler'::text, 'pharmacist'::text, 'doctor'::text, 'patient'::text])))
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �           0    0    TABLE users    ACL     (  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.users TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.users TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.users TO service_role;
          public               postgres    false    294            #           1259    29256    messages    TABLE     w  CREATE TABLE realtime.messages (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
)
PARTITION BY RANGE (inserted_at);
    DROP TABLE realtime.messages;
       realtime         p       supabase_realtime_admin    false    18            �           0    0    TABLE messages    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages TO dashboard_user;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO anon;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO authenticated;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO service_role;
          realtime               supabase_realtime_admin    false    291            :           1259    38238    messages_2025_03_13    TABLE     a  CREATE TABLE realtime.messages_2025_03_13 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);
 )   DROP TABLE realtime.messages_2025_03_13;
       realtime         heap r       supabase_admin    false    18    291            �           0    0    TABLE messages_2025_03_13    ACL     �   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages_2025_03_13 TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages_2025_03_13 TO dashboard_user;
          realtime               supabase_admin    false    314            ;           1259    38249    messages_2025_03_14    TABLE     a  CREATE TABLE realtime.messages_2025_03_14 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);
 )   DROP TABLE realtime.messages_2025_03_14;
       realtime         heap r       supabase_admin    false    291    18            �           0    0    TABLE messages_2025_03_14    ACL     �   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages_2025_03_14 TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages_2025_03_14 TO dashboard_user;
          realtime               supabase_admin    false    315            <           1259    38260    messages_2025_03_15    TABLE     a  CREATE TABLE realtime.messages_2025_03_15 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);
 )   DROP TABLE realtime.messages_2025_03_15;
       realtime         heap r       supabase_admin    false    291    18            �           0    0    TABLE messages_2025_03_15    ACL     �   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages_2025_03_15 TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages_2025_03_15 TO dashboard_user;
          realtime               supabase_admin    false    316            =           1259    38271    messages_2025_03_16    TABLE     a  CREATE TABLE realtime.messages_2025_03_16 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);
 )   DROP TABLE realtime.messages_2025_03_16;
       realtime         heap r       supabase_admin    false    291    18            �           0    0    TABLE messages_2025_03_16    ACL     �   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages_2025_03_16 TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages_2025_03_16 TO dashboard_user;
          realtime               supabase_admin    false    317            >           1259    38282    messages_2025_03_17    TABLE     a  CREATE TABLE realtime.messages_2025_03_17 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);
 )   DROP TABLE realtime.messages_2025_03_17;
       realtime         heap r       supabase_admin    false    291    18            �           0    0    TABLE messages_2025_03_17    ACL     �   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages_2025_03_17 TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages_2025_03_17 TO dashboard_user;
          realtime               supabase_admin    false    318            ?           1259    38417    messages_2025_03_18    TABLE     a  CREATE TABLE realtime.messages_2025_03_18 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);
 )   DROP TABLE realtime.messages_2025_03_18;
       realtime         heap r       supabase_admin    false    18    291            �           0    0    TABLE messages_2025_03_18    ACL     �   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages_2025_03_18 TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages_2025_03_18 TO dashboard_user;
          realtime               supabase_admin    false    319                       1259    29095    schema_migrations    TABLE     y   CREATE TABLE realtime.schema_migrations (
    version bigint NOT NULL,
    inserted_at timestamp(0) without time zone
);
 '   DROP TABLE realtime.schema_migrations;
       realtime         heap r       supabase_admin    false    18            �           0    0    TABLE schema_migrations    ACL     !  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.schema_migrations TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.schema_migrations TO dashboard_user;
GRANT SELECT ON TABLE realtime.schema_migrations TO anon;
GRANT SELECT ON TABLE realtime.schema_migrations TO authenticated;
GRANT SELECT ON TABLE realtime.schema_migrations TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.schema_migrations TO supabase_realtime_admin;
          realtime               supabase_admin    false    285                        1259    29117    subscription    TABLE     �  CREATE TABLE realtime.subscription (
    id bigint NOT NULL,
    subscription_id uuid NOT NULL,
    entity regclass NOT NULL,
    filters realtime.user_defined_filter[] DEFAULT '{}'::realtime.user_defined_filter[] NOT NULL,
    claims jsonb NOT NULL,
    claims_role regrole GENERATED ALWAYS AS (realtime.to_regrole((claims ->> 'role'::text))) STORED NOT NULL,
    created_at timestamp without time zone DEFAULT timezone('utc'::text, now()) NOT NULL
);
 "   DROP TABLE realtime.subscription;
       realtime         heap r       supabase_admin    false    1391    556    1391    18            �           0    0    TABLE subscription    ACL       GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.subscription TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.subscription TO dashboard_user;
GRANT SELECT ON TABLE realtime.subscription TO anon;
GRANT SELECT ON TABLE realtime.subscription TO authenticated;
GRANT SELECT ON TABLE realtime.subscription TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.subscription TO supabase_realtime_admin;
          realtime               supabase_admin    false    288                       1259    29116    subscription_id_seq    SEQUENCE     �   ALTER TABLE realtime.subscription ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME realtime.subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            realtime               supabase_admin    false    288    18            �           0    0    SEQUENCE subscription_id_seq    ACL     �  GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO postgres;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO dashboard_user;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO anon;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO authenticated;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO service_role;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO supabase_realtime_admin;
          realtime               supabase_admin    false    287            �            1259    16540    buckets    TABLE     k  CREATE TABLE storage.buckets (
    id text NOT NULL,
    name text NOT NULL,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    public boolean DEFAULT false,
    avif_autodetection boolean DEFAULT false,
    file_size_limit bigint,
    allowed_mime_types text[],
    owner_id text
);
    DROP TABLE storage.buckets;
       storage         heap r       supabase_storage_admin    false    16            �           0    0    COLUMN buckets.owner    COMMENT     X   COMMENT ON COLUMN storage.buckets.owner IS 'Field is deprecated, use owner_id instead';
          storage               supabase_storage_admin    false    253            �           0    0    TABLE buckets    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO postgres;
          storage               supabase_storage_admin    false    253            �            1259    16582 
   migrations    TABLE     �   CREATE TABLE storage.migrations (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    hash character varying(40) NOT NULL,
    executed_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE storage.migrations;
       storage         heap r       supabase_storage_admin    false    16            �           0    0    TABLE migrations    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO postgres;
          storage               supabase_storage_admin    false    255            �            1259    16555    objects    TABLE     �  CREATE TABLE storage.objects (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    bucket_id text,
    name text,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    last_accessed_at timestamp with time zone DEFAULT now(),
    metadata jsonb,
    path_tokens text[] GENERATED ALWAYS AS (string_to_array(name, '/'::text)) STORED,
    version text,
    owner_id text,
    user_metadata jsonb
);
    DROP TABLE storage.objects;
       storage         heap r       supabase_storage_admin    false    16            �           0    0    COLUMN objects.owner    COMMENT     X   COMMENT ON COLUMN storage.objects.owner IS 'Field is deprecated, use owner_id instead';
          storage               supabase_storage_admin    false    254            �           0    0    TABLE objects    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO postgres;
          storage               supabase_storage_admin    false    254                       1259    29038    s3_multipart_uploads    TABLE     j  CREATE TABLE storage.s3_multipart_uploads (
    id text NOT NULL,
    in_progress_size bigint DEFAULT 0 NOT NULL,
    upload_signature text NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    version text NOT NULL,
    owner_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    user_metadata jsonb
);
 )   DROP TABLE storage.s3_multipart_uploads;
       storage         heap r       supabase_storage_admin    false    16            �           0    0    TABLE s3_multipart_uploads    ACL     �   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.s3_multipart_uploads TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO anon;
          storage               supabase_storage_admin    false    283                       1259    29052    s3_multipart_uploads_parts    TABLE     �  CREATE TABLE storage.s3_multipart_uploads_parts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    upload_id text NOT NULL,
    size bigint DEFAULT 0 NOT NULL,
    part_number integer NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    etag text NOT NULL,
    owner_id text,
    version text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);
 /   DROP TABLE storage.s3_multipart_uploads_parts;
       storage         heap r       supabase_storage_admin    false    16            �           0    0     TABLE s3_multipart_uploads_parts    ACL       GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.s3_multipart_uploads_parts TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO anon;
          storage               supabase_storage_admin    false    284            7           1259    31210    hooks    TABLE     �   CREATE TABLE supabase_functions.hooks (
    id bigint NOT NULL,
    hook_table_id integer NOT NULL,
    hook_name text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    request_id bigint
);
 %   DROP TABLE supabase_functions.hooks;
       supabase_functions         heap r       supabase_functions_admin    false    32            �           0    0    TABLE hooks    COMMENT     k   COMMENT ON TABLE supabase_functions.hooks IS 'Supabase Functions Hooks: Audit trail for triggered hooks.';
          supabase_functions               supabase_functions_admin    false    311            �           0    0    TABLE hooks    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE supabase_functions.hooks TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE supabase_functions.hooks TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE supabase_functions.hooks TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE supabase_functions.hooks TO service_role;
          supabase_functions               supabase_functions_admin    false    311            6           1259    31209    hooks_id_seq    SEQUENCE     �   CREATE SEQUENCE supabase_functions.hooks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE supabase_functions.hooks_id_seq;
       supabase_functions               supabase_functions_admin    false    32    311            �           0    0    hooks_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE supabase_functions.hooks_id_seq OWNED BY supabase_functions.hooks.id;
          supabase_functions               supabase_functions_admin    false    310            �           0    0    SEQUENCE hooks_id_seq    ACL       GRANT ALL ON SEQUENCE supabase_functions.hooks_id_seq TO postgres;
GRANT ALL ON SEQUENCE supabase_functions.hooks_id_seq TO anon;
GRANT ALL ON SEQUENCE supabase_functions.hooks_id_seq TO authenticated;
GRANT ALL ON SEQUENCE supabase_functions.hooks_id_seq TO service_role;
          supabase_functions               supabase_functions_admin    false    310            5           1259    31201 
   migrations    TABLE     �   CREATE TABLE supabase_functions.migrations (
    version text NOT NULL,
    inserted_at timestamp with time zone DEFAULT now() NOT NULL
);
 *   DROP TABLE supabase_functions.migrations;
       supabase_functions         heap r       supabase_functions_admin    false    32            �           0    0    TABLE migrations    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE supabase_functions.migrations TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE supabase_functions.migrations TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE supabase_functions.migrations TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE supabase_functions.migrations TO service_role;
          supabase_functions               supabase_functions_admin    false    309            .           1259    31014    schema_migrations    TABLE     x   CREATE TABLE supabase_migrations.schema_migrations (
    version text NOT NULL,
    statements text[],
    name text
);
 2   DROP TABLE supabase_migrations.schema_migrations;
       supabase_migrations         heap r       postgres    false    28            /           1259    31021 
   seed_files    TABLE     `   CREATE TABLE supabase_migrations.seed_files (
    path text NOT NULL,
    hash text NOT NULL
);
 +   DROP TABLE supabase_migrations.seed_files;
       supabase_migrations         heap r       postgres    false    28                       1259    16970    decrypted_secrets    VIEW     �  CREATE VIEW vault.decrypted_secrets AS
 SELECT secrets.id,
    secrets.name,
    secrets.description,
    secrets.secret,
        CASE
            WHEN (secrets.secret IS NULL) THEN NULL::text
            ELSE
            CASE
                WHEN (secrets.key_id IS NULL) THEN NULL::text
                ELSE convert_from(pgsodium.crypto_aead_det_decrypt(decode(secrets.secret, 'base64'::text), convert_to(((((secrets.id)::text || secrets.description) || (secrets.created_at)::text) || (secrets.updated_at)::text), 'utf8'::name), secrets.key_id, secrets.nonce), 'utf8'::name)
            END
        END AS decrypted_secret,
    secrets.key_id,
    secrets.nonce,
    secrets.created_at,
    secrets.updated_at
   FROM vault.secrets;
 #   DROP VIEW vault.decrypted_secrets;
       vault       v       supabase_admin    false    7    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    19    19    6    19    6    19    22    7    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    19    19    6    19    6    19    22    7    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    19    19    6    19    6    19    22    7    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    19    19    6    19    6    19    22    7    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    19    19    6    19    6    19    22    7    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    19    19    6    19    6    19    22    6    19    7    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    19    19    6    19    6    19    22    7    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    6    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    6    19    6    19    19    6    19    6    19    6    6    19    6    19    19    6    19    6    19    19    6    19    6    19    19    6    19    6    19    22    22            �           0    0    messages_2025_03_13    TABLE ATTACH     �   ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2025_03_13 FOR VALUES FROM ('2025-03-13 00:00:00') TO ('2025-03-14 00:00:00');
          realtime               supabase_admin    false    314    291            �           0    0    messages_2025_03_14    TABLE ATTACH     �   ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2025_03_14 FOR VALUES FROM ('2025-03-14 00:00:00') TO ('2025-03-15 00:00:00');
          realtime               supabase_admin    false    315    291            �           0    0    messages_2025_03_15    TABLE ATTACH     �   ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2025_03_15 FOR VALUES FROM ('2025-03-15 00:00:00') TO ('2025-03-16 00:00:00');
          realtime               supabase_admin    false    316    291            �           0    0    messages_2025_03_16    TABLE ATTACH     �   ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2025_03_16 FOR VALUES FROM ('2025-03-16 00:00:00') TO ('2025-03-17 00:00:00');
          realtime               supabase_admin    false    317    291            �           0    0    messages_2025_03_17    TABLE ATTACH     �   ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2025_03_17 FOR VALUES FROM ('2025-03-17 00:00:00') TO ('2025-03-18 00:00:00');
          realtime               supabase_admin    false    318    291            �           0    0    messages_2025_03_18    TABLE ATTACH     �   ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2025_03_18 FOR VALUES FROM ('2025-03-18 00:00:00') TO ('2025-03-19 00:00:00');
          realtime               supabase_admin    false    319    291            �           2604    16504    refresh_tokens id    DEFAULT     r   ALTER TABLE ONLY auth.refresh_tokens ALTER COLUMN id SET DEFAULT nextval('auth.refresh_tokens_id_seq'::regclass);
 >   ALTER TABLE auth.refresh_tokens ALTER COLUMN id DROP DEFAULT;
       auth               supabase_auth_admin    false    249    248    249            3           2604    38212    blockchain_ledger id    DEFAULT     |   ALTER TABLE ONLY public.blockchain_ledger ALTER COLUMN id SET DEFAULT nextval('public.blockchain_ledger_id_seq'::regclass);
 C   ALTER TABLE public.blockchain_ledger ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    313    312    313            !           2604    29307    health_check id    DEFAULT     r   ALTER TABLE ONLY public.health_check ALTER COLUMN id SET DEFAULT nextval('public.health_check_id_seq'::regclass);
 >   ALTER TABLE public.health_check ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    293    292    293            +           2604    29546    shipment_status_updates id    DEFAULT     �   ALTER TABLE ONLY public.shipment_status_updates ALTER COLUMN id SET DEFAULT nextval('public.shipment_status_updates_id_seq'::regclass);
 I   ALTER TABLE public.shipment_status_updates ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    300    299    300            1           2604    31213    hooks id    DEFAULT     |   ALTER TABLE ONLY supabase_functions.hooks ALTER COLUMN id SET DEFAULT nextval('supabase_functions.hooks_id_seq'::regclass);
 C   ALTER TABLE supabase_functions.hooks ALTER COLUMN id DROP DEFAULT;
       supabase_functions               supabase_functions_admin    false    311    310    311            �          0    16519    audit_log_entries 
   TABLE DATA           [   COPY auth.audit_log_entries (instance_id, id, payload, created_at, ip_address) FROM stdin;
    auth               supabase_auth_admin    false    251   F      �          0    28931 
   flow_state 
   TABLE DATA           �   COPY auth.flow_state (id, user_id, auth_code, code_challenge_method, code_challenge, provider_type, provider_access_token, provider_refresh_token, created_at, updated_at, authentication_method, auth_code_issued_at) FROM stdin;
    auth               supabase_auth_admin    false    281   ؅      �          0    28728 
   identities 
   TABLE DATA           ~   COPY auth.identities (provider_id, user_id, identity_data, provider, last_sign_in_at, created_at, updated_at, id) FROM stdin;
    auth               supabase_auth_admin    false    272   ��      �          0    16512 	   instances 
   TABLE DATA           T   COPY auth.instances (id, uuid, raw_base_config, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    250   �      �          0    28818    mfa_amr_claims 
   TABLE DATA           e   COPY auth.mfa_amr_claims (session_id, created_at, updated_at, authentication_method, id) FROM stdin;
    auth               supabase_auth_admin    false    276   ��      �          0    28806    mfa_challenges 
   TABLE DATA           |   COPY auth.mfa_challenges (id, factor_id, created_at, verified_at, ip_address, otp_code, web_authn_session_data) FROM stdin;
    auth               supabase_auth_admin    false    275   b�      �          0    28793    mfa_factors 
   TABLE DATA           �   COPY auth.mfa_factors (id, user_id, friendly_name, factor_type, status, created_at, updated_at, secret, phone, last_challenged_at, web_authn_credential, web_authn_aaguid) FROM stdin;
    auth               supabase_auth_admin    false    274   �      �          0    28981    one_time_tokens 
   TABLE DATA           p   COPY auth.one_time_tokens (id, user_id, token_type, token_hash, relates_to, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    282   ��      �          0    16501    refresh_tokens 
   TABLE DATA           |   COPY auth.refresh_tokens (instance_id, id, token, user_id, revoked, created_at, updated_at, parent, session_id) FROM stdin;
    auth               supabase_auth_admin    false    249   ��      �          0    28860    saml_providers 
   TABLE DATA           �   COPY auth.saml_providers (id, sso_provider_id, entity_id, metadata_xml, metadata_url, attribute_mapping, created_at, updated_at, name_id_format) FROM stdin;
    auth               supabase_auth_admin    false    279   �      �          0    28878    saml_relay_states 
   TABLE DATA           �   COPY auth.saml_relay_states (id, sso_provider_id, request_id, for_email, redirect_to, created_at, updated_at, flow_state_id) FROM stdin;
    auth               supabase_auth_admin    false    280   �      �          0    16527    schema_migrations 
   TABLE DATA           2   COPY auth.schema_migrations (version) FROM stdin;
    auth               supabase_auth_admin    false    252   �      �          0    28758    sessions 
   TABLE DATA           �   COPY auth.sessions (id, user_id, created_at, updated_at, factor_id, aal, not_after, refreshed_at, user_agent, ip, tag) FROM stdin;
    auth               supabase_auth_admin    false    273   {�      �          0    28845    sso_domains 
   TABLE DATA           X   COPY auth.sso_domains (id, sso_provider_id, domain, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    278   f�      �          0    28836    sso_providers 
   TABLE DATA           N   COPY auth.sso_providers (id, resource_id, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    277   ��      �          0    16489    users 
   TABLE DATA           O  COPY auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) FROM stdin;
    auth               supabase_auth_admin    false    247   ��      �          0    16790    key 
   TABLE DATA           �   COPY pgsodium.key (id, status, created, expires, key_type, key_id, key_context, name, associated_data, raw_key, raw_key_nonce, parent_key, comment, user_data) FROM stdin;
    pgsodium               supabase_admin    false    263   ��                0    38209    blockchain_ledger 
   TABLE DATA           \   COPY public.blockchain_ledger (id, tx_hash, tx_data, block_height, "timestamp") FROM stdin;
    public               postgres    false    313   Д                0    29443    drug_status_updates 
   TABLE DATA           �   COPY public.drug_status_updates (id, drug_id, status, location, updated_by, blockchain_tx_id, "timestamp", status_timestamp) FROM stdin;
    public               postgres    false    297   z�                0    29392    drugs 
   TABLE DATA           �   COPY public.drugs (drug_id, name, manufacturer, manufacture_date, expiry_date, batch_number, blockchain_tx_id, "timestamp") FROM stdin;
    public               postgres    false    295   d�                0    29304    health_check 
   TABLE DATA           ?   COPY public.health_check (id, status, "timestamp") FROM stdin;
    public               postgres    false    293   ��      
          0    29604    prescriptions 
   TABLE DATA           �   COPY public.prescriptions (prescription_id, patient_id, doctor_id, drug_ids, issue_date, expiry_date, "timestamp", dispensed, dispensed_by, dispensed_at, notes) FROM stdin;
    public               postgres    false    301   �      	          0    29543    shipment_status_updates 
   TABLE DATA              COPY public.shipment_status_updates (id, shipment_id, status, location, updated_by, blockchain_tx_id, "timestamp") FROM stdin;
    public               postgres    false    300   �                0    29504 	   shipments 
   TABLE DATA           �   COPY public.shipments (shipment_id, drug_ids, sender, receiver, status, ship_date, blockchain_tx_id, "timestamp", shipment_timestamp) FROM stdin;
    public               postgres    false    298   c�                0    29336    users 
   TABLE DATA           J   COPY public.users (id, name, email, role, active, created_at) FROM stdin;
    public               postgres    false    294   �                0    38238    messages_2025_03_13 
   TABLE DATA           w   COPY realtime.messages_2025_03_13 (topic, extension, payload, event, private, updated_at, inserted_at, id) FROM stdin;
    realtime               supabase_admin    false    314   (�                0    38249    messages_2025_03_14 
   TABLE DATA           w   COPY realtime.messages_2025_03_14 (topic, extension, payload, event, private, updated_at, inserted_at, id) FROM stdin;
    realtime               supabase_admin    false    315   E�                0    38260    messages_2025_03_15 
   TABLE DATA           w   COPY realtime.messages_2025_03_15 (topic, extension, payload, event, private, updated_at, inserted_at, id) FROM stdin;
    realtime               supabase_admin    false    316   b�                0    38271    messages_2025_03_16 
   TABLE DATA           w   COPY realtime.messages_2025_03_16 (topic, extension, payload, event, private, updated_at, inserted_at, id) FROM stdin;
    realtime               supabase_admin    false    317   �                0    38282    messages_2025_03_17 
   TABLE DATA           w   COPY realtime.messages_2025_03_17 (topic, extension, payload, event, private, updated_at, inserted_at, id) FROM stdin;
    realtime               supabase_admin    false    318   ��                0    38417    messages_2025_03_18 
   TABLE DATA           w   COPY realtime.messages_2025_03_18 (topic, extension, payload, event, private, updated_at, inserted_at, id) FROM stdin;
    realtime               supabase_admin    false    319   ��      �          0    29095    schema_migrations 
   TABLE DATA           C   COPY realtime.schema_migrations (version, inserted_at) FROM stdin;
    realtime               supabase_admin    false    285   ֠                 0    29117    subscription 
   TABLE DATA           b   COPY realtime.subscription (id, subscription_id, entity, filters, claims, created_at) FROM stdin;
    realtime               supabase_admin    false    288   Ȣ      �          0    16540    buckets 
   TABLE DATA           �   COPY storage.buckets (id, name, owner, created_at, updated_at, public, avif_autodetection, file_size_limit, allowed_mime_types, owner_id) FROM stdin;
    storage               supabase_storage_admin    false    253   �      �          0    16582 
   migrations 
   TABLE DATA           B   COPY storage.migrations (id, name, hash, executed_at) FROM stdin;
    storage               supabase_storage_admin    false    255   A�      �          0    16555    objects 
   TABLE DATA           �   COPY storage.objects (id, bucket_id, name, owner, created_at, updated_at, last_accessed_at, metadata, version, owner_id, user_metadata) FROM stdin;
    storage               supabase_storage_admin    false    254   �      �          0    29038    s3_multipart_uploads 
   TABLE DATA           �   COPY storage.s3_multipart_uploads (id, in_progress_size, upload_signature, bucket_id, key, version, owner_id, created_at, user_metadata) FROM stdin;
    storage               supabase_storage_admin    false    283   ��      �          0    29052    s3_multipart_uploads_parts 
   TABLE DATA           �   COPY storage.s3_multipart_uploads_parts (id, upload_id, size, part_number, bucket_id, key, etag, owner_id, version, created_at) FROM stdin;
    storage               supabase_storage_admin    false    284   ۬                0    31210    hooks 
   TABLE DATA           a   COPY supabase_functions.hooks (id, hook_table_id, hook_name, created_at, request_id) FROM stdin;
    supabase_functions               supabase_functions_admin    false    311   ��                0    31201 
   migrations 
   TABLE DATA           F   COPY supabase_functions.migrations (version, inserted_at) FROM stdin;
    supabase_functions               supabase_functions_admin    false    309   �                0    31014    schema_migrations 
   TABLE DATA           S   COPY supabase_migrations.schema_migrations (version, statements, name) FROM stdin;
    supabase_migrations               postgres    false    302   n�                0    31021 
   seed_files 
   TABLE DATA           =   COPY supabase_migrations.seed_files (path, hash) FROM stdin;
    supabase_migrations               postgres    false    303   ��      �          0    16951    secrets 
   TABLE DATA           f   COPY vault.secrets (id, name, description, secret, key_id, nonce, created_at, updated_at) FROM stdin;
    vault               supabase_admin    false    269   ��      �           0    0    refresh_tokens_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('auth.refresh_tokens_id_seq', 203, true);
          auth               supabase_auth_admin    false    248            �           0    0    key_key_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('pgsodium.key_key_id_seq', 1, false);
          pgsodium               supabase_admin    false    262            �           0    0    blockchain_ledger_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.blockchain_ledger_id_seq', 58, true);
          public               postgres    false    312            �           0    0    drug_status_updates_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.drug_status_updates_id_seq', 2, true);
          public               postgres    false    296            �           0    0    health_check_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.health_check_id_seq', 1, true);
          public               postgres    false    292            �           0    0    shipment_status_updates_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.shipment_status_updates_id_seq', 32, true);
          public               postgres    false    299            �           0    0    subscription_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('realtime.subscription_id_seq', 1, false);
          realtime               supabase_admin    false    287            �           0    0    hooks_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('supabase_functions.hooks_id_seq', 277, true);
          supabase_functions               supabase_functions_admin    false    310            �           2606    28831    mfa_amr_claims amr_id_pk 
   CONSTRAINT     T   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT amr_id_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT amr_id_pk;
       auth                 supabase_auth_admin    false    276            q           2606    16525 (   audit_log_entries audit_log_entries_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY auth.audit_log_entries
    ADD CONSTRAINT audit_log_entries_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY auth.audit_log_entries DROP CONSTRAINT audit_log_entries_pkey;
       auth                 supabase_auth_admin    false    251            �           2606    28937    flow_state flow_state_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY auth.flow_state
    ADD CONSTRAINT flow_state_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY auth.flow_state DROP CONSTRAINT flow_state_pkey;
       auth                 supabase_auth_admin    false    281            �           2606    28955    identities identities_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_pkey;
       auth                 supabase_auth_admin    false    272            �           2606    28965 1   identities identities_provider_id_provider_unique 
   CONSTRAINT     {   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_provider_id_provider_unique UNIQUE (provider_id, provider);
 Y   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_provider_id_provider_unique;
       auth                 supabase_auth_admin    false    272    272            o           2606    16518    instances instances_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY auth.instances
    ADD CONSTRAINT instances_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY auth.instances DROP CONSTRAINT instances_pkey;
       auth                 supabase_auth_admin    false    250            �           2606    28824 C   mfa_amr_claims mfa_amr_claims_session_id_authentication_method_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey UNIQUE (session_id, authentication_method);
 k   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey;
       auth                 supabase_auth_admin    false    276    276            �           2606    28812 "   mfa_challenges mfa_challenges_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.mfa_challenges DROP CONSTRAINT mfa_challenges_pkey;
       auth                 supabase_auth_admin    false    275            �           2606    29005 .   mfa_factors mfa_factors_last_challenged_at_key 
   CONSTRAINT     u   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_last_challenged_at_key UNIQUE (last_challenged_at);
 V   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_last_challenged_at_key;
       auth                 supabase_auth_admin    false    274            �           2606    28799    mfa_factors mfa_factors_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_pkey;
       auth                 supabase_auth_admin    false    274            �           2606    28990 $   one_time_tokens one_time_tokens_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY auth.one_time_tokens DROP CONSTRAINT one_time_tokens_pkey;
       auth                 supabase_auth_admin    false    282            i           2606    16508 "   refresh_tokens refresh_tokens_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_pkey;
       auth                 supabase_auth_admin    false    249            l           2606    28741 *   refresh_tokens refresh_tokens_token_unique 
   CONSTRAINT     d   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_token_unique UNIQUE (token);
 R   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_token_unique;
       auth                 supabase_auth_admin    false    249            �           2606    28871 +   saml_providers saml_providers_entity_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_entity_id_key UNIQUE (entity_id);
 S   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_entity_id_key;
       auth                 supabase_auth_admin    false    279            �           2606    28869 "   saml_providers saml_providers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_pkey;
       auth                 supabase_auth_admin    false    279            �           2606    28885 (   saml_relay_states saml_relay_states_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_pkey;
       auth                 supabase_auth_admin    false    280            t           2606    16531 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 P   ALTER TABLE ONLY auth.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       auth                 supabase_auth_admin    false    252            �           2606    28762    sessions sessions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY auth.sessions DROP CONSTRAINT sessions_pkey;
       auth                 supabase_auth_admin    false    273            �           2606    28852    sso_domains sso_domains_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY auth.sso_domains DROP CONSTRAINT sso_domains_pkey;
       auth                 supabase_auth_admin    false    278            �           2606    28843     sso_providers sso_providers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY auth.sso_providers
    ADD CONSTRAINT sso_providers_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY auth.sso_providers DROP CONSTRAINT sso_providers_pkey;
       auth                 supabase_auth_admin    false    277            b           2606    28925    users users_phone_key 
   CONSTRAINT     O   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);
 =   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_phone_key;
       auth                 supabase_auth_admin    false    247            d           2606    16495    users users_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_pkey;
       auth                 supabase_auth_admin    false    247            �           2606    38216 (   blockchain_ledger blockchain_ledger_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.blockchain_ledger
    ADD CONSTRAINT blockchain_ledger_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.blockchain_ledger DROP CONSTRAINT blockchain_ledger_pkey;
       public                 postgres    false    313            �           2606    35845 ,   drug_status_updates drug_status_updates_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.drug_status_updates
    ADD CONSTRAINT drug_status_updates_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.drug_status_updates DROP CONSTRAINT drug_status_updates_pkey;
       public                 postgres    false    297            �           2606    38341     drugs drugs_blockchain_tx_id_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.drugs
    ADD CONSTRAINT drugs_blockchain_tx_id_key UNIQUE (blockchain_tx_id);
 J   ALTER TABLE ONLY public.drugs DROP CONSTRAINT drugs_blockchain_tx_id_key;
       public                 postgres    false    295            �           2606    29399    drugs drugs_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.drugs
    ADD CONSTRAINT drugs_pkey PRIMARY KEY (drug_id);
 :   ALTER TABLE ONLY public.drugs DROP CONSTRAINT drugs_pkey;
       public                 postgres    false    295            �           2606    29312    health_check health_check_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.health_check
    ADD CONSTRAINT health_check_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.health_check DROP CONSTRAINT health_check_pkey;
       public                 postgres    false    293            �           2606    29612     prescriptions prescriptions_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_pkey PRIMARY KEY (prescription_id);
 J   ALTER TABLE ONLY public.prescriptions DROP CONSTRAINT prescriptions_pkey;
       public                 postgres    false    301            �           2606    29551 4   shipment_status_updates shipment_status_updates_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.shipment_status_updates
    ADD CONSTRAINT shipment_status_updates_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.shipment_status_updates DROP CONSTRAINT shipment_status_updates_pkey;
       public                 postgres    false    300            �           2606    29511    shipments shipments_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.shipments
    ADD CONSTRAINT shipments_pkey PRIMARY KEY (shipment_id);
 B   ALTER TABLE ONLY public.shipments DROP CONSTRAINT shipments_pkey;
       public                 postgres    false    298            �           2606    29347    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 postgres    false    294            �           2606    29345    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    294            �           2606    29270    messages messages_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY realtime.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id, inserted_at);
 B   ALTER TABLE ONLY realtime.messages DROP CONSTRAINT messages_pkey;
       realtime                 supabase_realtime_admin    false    291    291            �           2606    38246 ,   messages_2025_03_13 messages_2025_03_13_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY realtime.messages_2025_03_13
    ADD CONSTRAINT messages_2025_03_13_pkey PRIMARY KEY (id, inserted_at);
 X   ALTER TABLE ONLY realtime.messages_2025_03_13 DROP CONSTRAINT messages_2025_03_13_pkey;
       realtime                 supabase_admin    false    314    4044    314    314            �           2606    38257 ,   messages_2025_03_14 messages_2025_03_14_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY realtime.messages_2025_03_14
    ADD CONSTRAINT messages_2025_03_14_pkey PRIMARY KEY (id, inserted_at);
 X   ALTER TABLE ONLY realtime.messages_2025_03_14 DROP CONSTRAINT messages_2025_03_14_pkey;
       realtime                 supabase_admin    false    315    315    315    4044            �           2606    38268 ,   messages_2025_03_15 messages_2025_03_15_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY realtime.messages_2025_03_15
    ADD CONSTRAINT messages_2025_03_15_pkey PRIMARY KEY (id, inserted_at);
 X   ALTER TABLE ONLY realtime.messages_2025_03_15 DROP CONSTRAINT messages_2025_03_15_pkey;
       realtime                 supabase_admin    false    4044    316    316    316            �           2606    38279 ,   messages_2025_03_16 messages_2025_03_16_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY realtime.messages_2025_03_16
    ADD CONSTRAINT messages_2025_03_16_pkey PRIMARY KEY (id, inserted_at);
 X   ALTER TABLE ONLY realtime.messages_2025_03_16 DROP CONSTRAINT messages_2025_03_16_pkey;
       realtime                 supabase_admin    false    4044    317    317    317            �           2606    38290 ,   messages_2025_03_17 messages_2025_03_17_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY realtime.messages_2025_03_17
    ADD CONSTRAINT messages_2025_03_17_pkey PRIMARY KEY (id, inserted_at);
 X   ALTER TABLE ONLY realtime.messages_2025_03_17 DROP CONSTRAINT messages_2025_03_17_pkey;
       realtime                 supabase_admin    false    318    4044    318    318            �           2606    38425 ,   messages_2025_03_18 messages_2025_03_18_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY realtime.messages_2025_03_18
    ADD CONSTRAINT messages_2025_03_18_pkey PRIMARY KEY (id, inserted_at);
 X   ALTER TABLE ONLY realtime.messages_2025_03_18 DROP CONSTRAINT messages_2025_03_18_pkey;
       realtime                 supabase_admin    false    4044    319    319    319            �           2606    29125    subscription pk_subscription 
   CONSTRAINT     \   ALTER TABLE ONLY realtime.subscription
    ADD CONSTRAINT pk_subscription PRIMARY KEY (id);
 H   ALTER TABLE ONLY realtime.subscription DROP CONSTRAINT pk_subscription;
       realtime                 supabase_admin    false    288            �           2606    29099 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY realtime.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 T   ALTER TABLE ONLY realtime.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       realtime                 supabase_admin    false    285            w           2606    16548    buckets buckets_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY storage.buckets
    ADD CONSTRAINT buckets_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY storage.buckets DROP CONSTRAINT buckets_pkey;
       storage                 supabase_storage_admin    false    253            ~           2606    16589    migrations migrations_name_key 
   CONSTRAINT     Z   ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_name_key UNIQUE (name);
 I   ALTER TABLE ONLY storage.migrations DROP CONSTRAINT migrations_name_key;
       storage                 supabase_storage_admin    false    255            �           2606    16587    migrations migrations_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY storage.migrations DROP CONSTRAINT migrations_pkey;
       storage                 supabase_storage_admin    false    255            |           2606    16565    objects objects_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT objects_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY storage.objects DROP CONSTRAINT objects_pkey;
       storage                 supabase_storage_admin    false    254            �           2606    29061 :   s3_multipart_uploads_parts s3_multipart_uploads_parts_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_pkey PRIMARY KEY (id);
 e   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_pkey;
       storage                 supabase_storage_admin    false    284            �           2606    29046 .   s3_multipart_uploads s3_multipart_uploads_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY storage.s3_multipart_uploads DROP CONSTRAINT s3_multipart_uploads_pkey;
       storage                 supabase_storage_admin    false    283            �           2606    31218    hooks hooks_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY supabase_functions.hooks
    ADD CONSTRAINT hooks_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY supabase_functions.hooks DROP CONSTRAINT hooks_pkey;
       supabase_functions                 supabase_functions_admin    false    311            �           2606    31208    migrations migrations_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY supabase_functions.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (version);
 P   ALTER TABLE ONLY supabase_functions.migrations DROP CONSTRAINT migrations_pkey;
       supabase_functions                 supabase_functions_admin    false    309            �           2606    31020 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY supabase_migrations.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 _   ALTER TABLE ONLY supabase_migrations.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       supabase_migrations                 postgres    false    302            �           2606    31027    seed_files seed_files_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY supabase_migrations.seed_files
    ADD CONSTRAINT seed_files_pkey PRIMARY KEY (path);
 Q   ALTER TABLE ONLY supabase_migrations.seed_files DROP CONSTRAINT seed_files_pkey;
       supabase_migrations                 postgres    false    303            r           1259    16526    audit_logs_instance_id_idx    INDEX     ]   CREATE INDEX audit_logs_instance_id_idx ON auth.audit_log_entries USING btree (instance_id);
 ,   DROP INDEX auth.audit_logs_instance_id_idx;
       auth                 supabase_auth_admin    false    251            X           1259    28751    confirmation_token_idx    INDEX     �   CREATE UNIQUE INDEX confirmation_token_idx ON auth.users USING btree (confirmation_token) WHERE ((confirmation_token)::text !~ '^[0-9 ]*$'::text);
 (   DROP INDEX auth.confirmation_token_idx;
       auth                 supabase_auth_admin    false    247    247            Y           1259    28753    email_change_token_current_idx    INDEX     �   CREATE UNIQUE INDEX email_change_token_current_idx ON auth.users USING btree (email_change_token_current) WHERE ((email_change_token_current)::text !~ '^[0-9 ]*$'::text);
 0   DROP INDEX auth.email_change_token_current_idx;
       auth                 supabase_auth_admin    false    247    247            Z           1259    28754    email_change_token_new_idx    INDEX     �   CREATE UNIQUE INDEX email_change_token_new_idx ON auth.users USING btree (email_change_token_new) WHERE ((email_change_token_new)::text !~ '^[0-9 ]*$'::text);
 ,   DROP INDEX auth.email_change_token_new_idx;
       auth                 supabase_auth_admin    false    247    247            �           1259    28833    factor_id_created_at_idx    INDEX     ]   CREATE INDEX factor_id_created_at_idx ON auth.mfa_factors USING btree (user_id, created_at);
 *   DROP INDEX auth.factor_id_created_at_idx;
       auth                 supabase_auth_admin    false    274    274            �           1259    28941    flow_state_created_at_idx    INDEX     Y   CREATE INDEX flow_state_created_at_idx ON auth.flow_state USING btree (created_at DESC);
 +   DROP INDEX auth.flow_state_created_at_idx;
       auth                 supabase_auth_admin    false    281            �           1259    28921    identities_email_idx    INDEX     [   CREATE INDEX identities_email_idx ON auth.identities USING btree (email text_pattern_ops);
 &   DROP INDEX auth.identities_email_idx;
       auth                 supabase_auth_admin    false    272            �           0    0    INDEX identities_email_idx    COMMENT     c   COMMENT ON INDEX auth.identities_email_idx IS 'Auth: Ensures indexed queries on the email column';
          auth               supabase_auth_admin    false    3979            �           1259    28748    identities_user_id_idx    INDEX     N   CREATE INDEX identities_user_id_idx ON auth.identities USING btree (user_id);
 (   DROP INDEX auth.identities_user_id_idx;
       auth                 supabase_auth_admin    false    272            �           1259    28938    idx_auth_code    INDEX     G   CREATE INDEX idx_auth_code ON auth.flow_state USING btree (auth_code);
    DROP INDEX auth.idx_auth_code;
       auth                 supabase_auth_admin    false    281            �           1259    28939    idx_user_id_auth_method    INDEX     f   CREATE INDEX idx_user_id_auth_method ON auth.flow_state USING btree (user_id, authentication_method);
 )   DROP INDEX auth.idx_user_id_auth_method;
       auth                 supabase_auth_admin    false    281    281            �           1259    28944    mfa_challenge_created_at_idx    INDEX     `   CREATE INDEX mfa_challenge_created_at_idx ON auth.mfa_challenges USING btree (created_at DESC);
 .   DROP INDEX auth.mfa_challenge_created_at_idx;
       auth                 supabase_auth_admin    false    275            �           1259    28805 %   mfa_factors_user_friendly_name_unique    INDEX     �   CREATE UNIQUE INDEX mfa_factors_user_friendly_name_unique ON auth.mfa_factors USING btree (friendly_name, user_id) WHERE (TRIM(BOTH FROM friendly_name) <> ''::text);
 7   DROP INDEX auth.mfa_factors_user_friendly_name_unique;
       auth                 supabase_auth_admin    false    274    274    274            �           1259    28950    mfa_factors_user_id_idx    INDEX     P   CREATE INDEX mfa_factors_user_id_idx ON auth.mfa_factors USING btree (user_id);
 )   DROP INDEX auth.mfa_factors_user_id_idx;
       auth                 supabase_auth_admin    false    274            �           1259    28997 #   one_time_tokens_relates_to_hash_idx    INDEX     b   CREATE INDEX one_time_tokens_relates_to_hash_idx ON auth.one_time_tokens USING hash (relates_to);
 5   DROP INDEX auth.one_time_tokens_relates_to_hash_idx;
       auth                 supabase_auth_admin    false    282            �           1259    28996 #   one_time_tokens_token_hash_hash_idx    INDEX     b   CREATE INDEX one_time_tokens_token_hash_hash_idx ON auth.one_time_tokens USING hash (token_hash);
 5   DROP INDEX auth.one_time_tokens_token_hash_hash_idx;
       auth                 supabase_auth_admin    false    282            �           1259    28998 &   one_time_tokens_user_id_token_type_key    INDEX     v   CREATE UNIQUE INDEX one_time_tokens_user_id_token_type_key ON auth.one_time_tokens USING btree (user_id, token_type);
 8   DROP INDEX auth.one_time_tokens_user_id_token_type_key;
       auth                 supabase_auth_admin    false    282    282            [           1259    28755    reauthentication_token_idx    INDEX     �   CREATE UNIQUE INDEX reauthentication_token_idx ON auth.users USING btree (reauthentication_token) WHERE ((reauthentication_token)::text !~ '^[0-9 ]*$'::text);
 ,   DROP INDEX auth.reauthentication_token_idx;
       auth                 supabase_auth_admin    false    247    247            \           1259    28752    recovery_token_idx    INDEX     �   CREATE UNIQUE INDEX recovery_token_idx ON auth.users USING btree (recovery_token) WHERE ((recovery_token)::text !~ '^[0-9 ]*$'::text);
 $   DROP INDEX auth.recovery_token_idx;
       auth                 supabase_auth_admin    false    247    247            e           1259    16509    refresh_tokens_instance_id_idx    INDEX     ^   CREATE INDEX refresh_tokens_instance_id_idx ON auth.refresh_tokens USING btree (instance_id);
 0   DROP INDEX auth.refresh_tokens_instance_id_idx;
       auth                 supabase_auth_admin    false    249            f           1259    16510 &   refresh_tokens_instance_id_user_id_idx    INDEX     o   CREATE INDEX refresh_tokens_instance_id_user_id_idx ON auth.refresh_tokens USING btree (instance_id, user_id);
 8   DROP INDEX auth.refresh_tokens_instance_id_user_id_idx;
       auth                 supabase_auth_admin    false    249    249            g           1259    28747    refresh_tokens_parent_idx    INDEX     T   CREATE INDEX refresh_tokens_parent_idx ON auth.refresh_tokens USING btree (parent);
 +   DROP INDEX auth.refresh_tokens_parent_idx;
       auth                 supabase_auth_admin    false    249            j           1259    28835 %   refresh_tokens_session_id_revoked_idx    INDEX     m   CREATE INDEX refresh_tokens_session_id_revoked_idx ON auth.refresh_tokens USING btree (session_id, revoked);
 7   DROP INDEX auth.refresh_tokens_session_id_revoked_idx;
       auth                 supabase_auth_admin    false    249    249            m           1259    28940    refresh_tokens_updated_at_idx    INDEX     a   CREATE INDEX refresh_tokens_updated_at_idx ON auth.refresh_tokens USING btree (updated_at DESC);
 /   DROP INDEX auth.refresh_tokens_updated_at_idx;
       auth                 supabase_auth_admin    false    249            �           1259    28877 "   saml_providers_sso_provider_id_idx    INDEX     f   CREATE INDEX saml_providers_sso_provider_id_idx ON auth.saml_providers USING btree (sso_provider_id);
 4   DROP INDEX auth.saml_providers_sso_provider_id_idx;
       auth                 supabase_auth_admin    false    279            �           1259    28942     saml_relay_states_created_at_idx    INDEX     g   CREATE INDEX saml_relay_states_created_at_idx ON auth.saml_relay_states USING btree (created_at DESC);
 2   DROP INDEX auth.saml_relay_states_created_at_idx;
       auth                 supabase_auth_admin    false    280            �           1259    28892    saml_relay_states_for_email_idx    INDEX     `   CREATE INDEX saml_relay_states_for_email_idx ON auth.saml_relay_states USING btree (for_email);
 1   DROP INDEX auth.saml_relay_states_for_email_idx;
       auth                 supabase_auth_admin    false    280            �           1259    28891 %   saml_relay_states_sso_provider_id_idx    INDEX     l   CREATE INDEX saml_relay_states_sso_provider_id_idx ON auth.saml_relay_states USING btree (sso_provider_id);
 7   DROP INDEX auth.saml_relay_states_sso_provider_id_idx;
       auth                 supabase_auth_admin    false    280            �           1259    28943    sessions_not_after_idx    INDEX     S   CREATE INDEX sessions_not_after_idx ON auth.sessions USING btree (not_after DESC);
 (   DROP INDEX auth.sessions_not_after_idx;
       auth                 supabase_auth_admin    false    273            �           1259    28834    sessions_user_id_idx    INDEX     J   CREATE INDEX sessions_user_id_idx ON auth.sessions USING btree (user_id);
 &   DROP INDEX auth.sessions_user_id_idx;
       auth                 supabase_auth_admin    false    273            �           1259    28859    sso_domains_domain_idx    INDEX     \   CREATE UNIQUE INDEX sso_domains_domain_idx ON auth.sso_domains USING btree (lower(domain));
 (   DROP INDEX auth.sso_domains_domain_idx;
       auth                 supabase_auth_admin    false    278    278            �           1259    28858    sso_domains_sso_provider_id_idx    INDEX     `   CREATE INDEX sso_domains_sso_provider_id_idx ON auth.sso_domains USING btree (sso_provider_id);
 1   DROP INDEX auth.sso_domains_sso_provider_id_idx;
       auth                 supabase_auth_admin    false    278            �           1259    28844    sso_providers_resource_id_idx    INDEX     j   CREATE UNIQUE INDEX sso_providers_resource_id_idx ON auth.sso_providers USING btree (lower(resource_id));
 /   DROP INDEX auth.sso_providers_resource_id_idx;
       auth                 supabase_auth_admin    false    277    277            �           1259    29003    unique_phone_factor_per_user    INDEX     c   CREATE UNIQUE INDEX unique_phone_factor_per_user ON auth.mfa_factors USING btree (user_id, phone);
 .   DROP INDEX auth.unique_phone_factor_per_user;
       auth                 supabase_auth_admin    false    274    274            �           1259    28832    user_id_created_at_idx    INDEX     X   CREATE INDEX user_id_created_at_idx ON auth.sessions USING btree (user_id, created_at);
 (   DROP INDEX auth.user_id_created_at_idx;
       auth                 supabase_auth_admin    false    273    273            ]           1259    28912    users_email_partial_key    INDEX     k   CREATE UNIQUE INDEX users_email_partial_key ON auth.users USING btree (email) WHERE (is_sso_user = false);
 )   DROP INDEX auth.users_email_partial_key;
       auth                 supabase_auth_admin    false    247    247            �           0    0    INDEX users_email_partial_key    COMMENT     }   COMMENT ON INDEX auth.users_email_partial_key IS 'Auth: A partial unique index that applies only when is_sso_user is false';
          auth               supabase_auth_admin    false    3933            ^           1259    28749    users_instance_id_email_idx    INDEX     h   CREATE INDEX users_instance_id_email_idx ON auth.users USING btree (instance_id, lower((email)::text));
 -   DROP INDEX auth.users_instance_id_email_idx;
       auth                 supabase_auth_admin    false    247    247            _           1259    16499    users_instance_id_idx    INDEX     L   CREATE INDEX users_instance_id_idx ON auth.users USING btree (instance_id);
 '   DROP INDEX auth.users_instance_id_idx;
       auth                 supabase_auth_admin    false    247            `           1259    28967    users_is_anonymous_idx    INDEX     N   CREATE INDEX users_is_anonymous_idx ON auth.users USING btree (is_anonymous);
 (   DROP INDEX auth.users_is_anonymous_idx;
       auth                 supabase_auth_admin    false    247            �           1259    29482    idx_drug_status_drug_id    INDEX     Z   CREATE INDEX idx_drug_status_drug_id ON public.drug_status_updates USING btree (drug_id);
 +   DROP INDEX public.idx_drug_status_drug_id;
       public                 postgres    false    297            �           1259    29420    idx_drugs_manufacturer    INDEX     P   CREATE INDEX idx_drugs_manufacturer ON public.drugs USING btree (manufacturer);
 *   DROP INDEX public.idx_drugs_manufacturer;
       public                 postgres    false    295            �           1259    29649    idx_prescriptions_doctor_id    INDEX     Z   CREATE INDEX idx_prescriptions_doctor_id ON public.prescriptions USING btree (doctor_id);
 /   DROP INDEX public.idx_prescriptions_doctor_id;
       public                 postgres    false    301            �           1259    29648    idx_prescriptions_patient_id    INDEX     \   CREATE INDEX idx_prescriptions_patient_id ON public.prescriptions USING btree (patient_id);
 0   DROP INDEX public.idx_prescriptions_patient_id;
       public                 postgres    false    301            �           1259    29582    idx_shipment_status_shipment_id    INDEX     j   CREATE INDEX idx_shipment_status_shipment_id ON public.shipment_status_updates USING btree (shipment_id);
 3   DROP INDEX public.idx_shipment_status_shipment_id;
       public                 postgres    false    300            �           1259    29370    idx_users_email    INDEX     B   CREATE INDEX idx_users_email ON public.users USING btree (email);
 #   DROP INDEX public.idx_users_email;
       public                 postgres    false    294            �           1259    29271    ix_realtime_subscription_entity    INDEX     \   CREATE INDEX ix_realtime_subscription_entity ON realtime.subscription USING btree (entity);
 5   DROP INDEX realtime.ix_realtime_subscription_entity;
       realtime                 supabase_admin    false    288            �           1259    29174 /   subscription_subscription_id_entity_filters_key    INDEX     �   CREATE UNIQUE INDEX subscription_subscription_id_entity_filters_key ON realtime.subscription USING btree (subscription_id, entity, filters);
 E   DROP INDEX realtime.subscription_subscription_id_entity_filters_key;
       realtime                 supabase_admin    false    288    288    288            u           1259    16554    bname    INDEX     A   CREATE UNIQUE INDEX bname ON storage.buckets USING btree (name);
    DROP INDEX storage.bname;
       storage                 supabase_storage_admin    false    253            x           1259    16576    bucketid_objname    INDEX     W   CREATE UNIQUE INDEX bucketid_objname ON storage.objects USING btree (bucket_id, name);
 %   DROP INDEX storage.bucketid_objname;
       storage                 supabase_storage_admin    false    254    254            �           1259    29072    idx_multipart_uploads_list    INDEX     r   CREATE INDEX idx_multipart_uploads_list ON storage.s3_multipart_uploads USING btree (bucket_id, key, created_at);
 /   DROP INDEX storage.idx_multipart_uploads_list;
       storage                 supabase_storage_admin    false    283    283    283            y           1259    29037    idx_objects_bucket_id_name    INDEX     f   CREATE INDEX idx_objects_bucket_id_name ON storage.objects USING btree (bucket_id, name COLLATE "C");
 /   DROP INDEX storage.idx_objects_bucket_id_name;
       storage                 supabase_storage_admin    false    254    254            z           1259    16577    name_prefix_search    INDEX     X   CREATE INDEX name_prefix_search ON storage.objects USING btree (name text_pattern_ops);
 '   DROP INDEX storage.name_prefix_search;
       storage                 supabase_storage_admin    false    254            �           1259    31220 .   supabase_functions_hooks_h_table_id_h_name_idx    INDEX     �   CREATE INDEX supabase_functions_hooks_h_table_id_h_name_idx ON supabase_functions.hooks USING btree (hook_table_id, hook_name);
 N   DROP INDEX supabase_functions.supabase_functions_hooks_h_table_id_h_name_idx;
       supabase_functions                 supabase_functions_admin    false    311    311            �           1259    31219 '   supabase_functions_hooks_request_id_idx    INDEX     k   CREATE INDEX supabase_functions_hooks_request_id_idx ON supabase_functions.hooks USING btree (request_id);
 G   DROP INDEX supabase_functions.supabase_functions_hooks_request_id_idx;
       supabase_functions                 supabase_functions_admin    false    311            �           0    0    messages_2025_03_13_pkey    INDEX ATTACH     W   ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2025_03_13_pkey;
          realtime               supabase_realtime_admin    false    314    4044    4082    4044    314    291            �           0    0    messages_2025_03_14_pkey    INDEX ATTACH     W   ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2025_03_14_pkey;
          realtime               supabase_realtime_admin    false    4084    315    4044    4044    315    291            �           0    0    messages_2025_03_15_pkey    INDEX ATTACH     W   ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2025_03_15_pkey;
          realtime               supabase_realtime_admin    false    4044    4086    316    4044    316    291                        0    0    messages_2025_03_16_pkey    INDEX ATTACH     W   ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2025_03_16_pkey;
          realtime               supabase_realtime_admin    false    4088    4044    317    4044    317    291                       0    0    messages_2025_03_17_pkey    INDEX ATTACH     W   ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2025_03_17_pkey;
          realtime               supabase_realtime_admin    false    4044    318    4090    4044    318    291                       0    0    messages_2025_03_18_pkey    INDEX ATTACH     W   ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2025_03_18_pkey;
          realtime               supabase_realtime_admin    false    319    4044    4092    4044    319    291                       2620    31356    users on_auth_user_created    TRIGGER     w   CREATE TRIGGER on_auth_user_created AFTER INSERT ON auth.users FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();
 1   DROP TRIGGER on_auth_user_created ON auth.users;
       auth               supabase_auth_admin    false    575    247                        2620    38202 4   shipments blockchain_ledger_shipments_sync_shipments    TRIGGER     H  CREATE TRIGGER blockchain_ledger_shipments_sync_shipments AFTER INSERT OR DELETE OR UPDATE ON public.shipments FOR EACH ROW EXECUTE FUNCTION supabase_functions.http_request('https://monthly-vital-reptile.ngrok-free.app/api/webhook', 'POST', '{"Content-type":"application/json","X-Webhook-Signature":"meowmeow"}', '{}', '5000');
 M   DROP TRIGGER blockchain_ledger_shipments_sync_shipments ON public.shipments;
       public               postgres    false    298    574                       2620    38201 "   drugs blockchain_ledger_sync_drugs    TRIGGER     1  CREATE TRIGGER blockchain_ledger_sync_drugs AFTER INSERT OR DELETE OR UPDATE ON public.drugs FOR EACH ROW EXECUTE FUNCTION supabase_functions.http_request('https://monthly-vital-reptile.ngrok-free.app/api/webhook', 'POST', '{"Content":"application/json","X-Webhook-Signature":"meowmeow"}', '{}', '5000');
 ;   DROP TRIGGER blockchain_ledger_sync_drugs ON public.drugs;
       public               postgres    false    295    574                       2620    29130    subscription tr_check_filters    TRIGGER     �   CREATE TRIGGER tr_check_filters BEFORE INSERT OR UPDATE ON realtime.subscription FOR EACH ROW EXECUTE FUNCTION realtime.subscription_check_filters();
 8   DROP TRIGGER tr_check_filters ON realtime.subscription;
       realtime               supabase_admin    false    288    552                       2620    29025 !   objects update_objects_updated_at    TRIGGER     �   CREATE TRIGGER update_objects_updated_at BEFORE UPDATE ON storage.objects FOR EACH ROW EXECUTE FUNCTION storage.update_updated_at_column();
 ;   DROP TRIGGER update_objects_updated_at ON storage.objects;
       storage               supabase_storage_admin    false    254    547                       2606    28735 "   identities identities_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_user_id_fkey;
       auth               supabase_auth_admin    false    272    247    3940            	           2606    28825 -   mfa_amr_claims mfa_amr_claims_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT mfa_amr_claims_session_id_fkey;
       auth               supabase_auth_admin    false    3987    273    276                       2606    28813 1   mfa_challenges mfa_challenges_auth_factor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_auth_factor_id_fkey FOREIGN KEY (factor_id) REFERENCES auth.mfa_factors(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY auth.mfa_challenges DROP CONSTRAINT mfa_challenges_auth_factor_id_fkey;
       auth               supabase_auth_admin    false    274    3994    275                       2606    28800 $   mfa_factors mfa_factors_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_user_id_fkey;
       auth               supabase_auth_admin    false    247    274    3940                       2606    28991 ,   one_time_tokens one_time_tokens_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY auth.one_time_tokens DROP CONSTRAINT one_time_tokens_user_id_fkey;
       auth               supabase_auth_admin    false    247    282    3940                       2606    28768 -   refresh_tokens refresh_tokens_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_session_id_fkey;
       auth               supabase_auth_admin    false    3987    273    249                       2606    28872 2   saml_providers saml_providers_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_sso_provider_id_fkey;
       auth               supabase_auth_admin    false    277    279    4006                       2606    28945 6   saml_relay_states saml_relay_states_flow_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_flow_state_id_fkey FOREIGN KEY (flow_state_id) REFERENCES auth.flow_state(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_flow_state_id_fkey;
       auth               supabase_auth_admin    false    280    4024    281                       2606    28886 8   saml_relay_states saml_relay_states_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_sso_provider_id_fkey;
       auth               supabase_auth_admin    false    277    4006    280                       2606    28763    sessions sessions_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY auth.sessions DROP CONSTRAINT sessions_user_id_fkey;
       auth               supabase_auth_admin    false    247    273    3940            
           2606    28853 ,   sso_domains sso_domains_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY auth.sso_domains DROP CONSTRAINT sso_domains_sso_provider_id_fkey;
       auth               supabase_auth_admin    false    277    4006    278                       2606    38351 =   drug_status_updates drug_status_updates_blockchain_tx_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.drug_status_updates
    ADD CONSTRAINT drug_status_updates_blockchain_tx_id_fkey FOREIGN KEY (blockchain_tx_id) REFERENCES public.drugs(blockchain_tx_id) ON UPDATE CASCADE;
 g   ALTER TABLE ONLY public.drug_status_updates DROP CONSTRAINT drug_status_updates_blockchain_tx_id_fkey;
       public               postgres    false    297    4053    295                       2606    38203 4   drug_status_updates drug_status_updates_drug_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.drug_status_updates
    ADD CONSTRAINT drug_status_updates_drug_id_fkey FOREIGN KEY (drug_id) REFERENCES public.drugs(drug_id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.drug_status_updates DROP CONSTRAINT drug_status_updates_drug_id_fkey;
       public               postgres    false    297    4055    295                       2606    29457 7   drug_status_updates drug_status_updates_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.drug_status_updates
    ADD CONSTRAINT drug_status_updates_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.users(id);
 a   ALTER TABLE ONLY public.drug_status_updates DROP CONSTRAINT drug_status_updates_updated_by_fkey;
       public               postgres    false    4051    294    297                       2606    29623 -   prescriptions prescriptions_dispensed_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_dispensed_by_fkey FOREIGN KEY (dispensed_by) REFERENCES public.users(id);
 W   ALTER TABLE ONLY public.prescriptions DROP CONSTRAINT prescriptions_dispensed_by_fkey;
       public               postgres    false    4051    294    301                       2606    29618 *   prescriptions prescriptions_doctor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.users(id);
 T   ALTER TABLE ONLY public.prescriptions DROP CONSTRAINT prescriptions_doctor_id_fkey;
       public               postgres    false    294    301    4051                       2606    29613 +   prescriptions prescriptions_patient_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.users(id);
 U   ALTER TABLE ONLY public.prescriptions DROP CONSTRAINT prescriptions_patient_id_fkey;
       public               postgres    false    301    4051    294                       2606    29552 @   shipment_status_updates shipment_status_updates_shipment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipment_status_updates
    ADD CONSTRAINT shipment_status_updates_shipment_id_fkey FOREIGN KEY (shipment_id) REFERENCES public.shipments(shipment_id);
 j   ALTER TABLE ONLY public.shipment_status_updates DROP CONSTRAINT shipment_status_updates_shipment_id_fkey;
       public               postgres    false    298    4061    300                       2606    29557 ?   shipment_status_updates shipment_status_updates_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipment_status_updates
    ADD CONSTRAINT shipment_status_updates_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.users(id);
 i   ALTER TABLE ONLY public.shipment_status_updates DROP CONSTRAINT shipment_status_updates_updated_by_fkey;
       public               postgres    false    294    300    4051                       2606    29517 !   shipments shipments_receiver_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipments
    ADD CONSTRAINT shipments_receiver_fkey FOREIGN KEY (receiver) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.shipments DROP CONSTRAINT shipments_receiver_fkey;
       public               postgres    false    298    4051    294                       2606    29512    shipments shipments_sender_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.shipments
    ADD CONSTRAINT shipments_sender_fkey FOREIGN KEY (sender) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.shipments DROP CONSTRAINT shipments_sender_fkey;
       public               postgres    false    298    4051    294                       2606    16566    objects objects_bucketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT "objects_bucketId_fkey" FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 J   ALTER TABLE ONLY storage.objects DROP CONSTRAINT "objects_bucketId_fkey";
       storage               supabase_storage_admin    false    3959    253    254                       2606    29047 8   s3_multipart_uploads s3_multipart_uploads_bucket_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 c   ALTER TABLE ONLY storage.s3_multipart_uploads DROP CONSTRAINT s3_multipart_uploads_bucket_id_fkey;
       storage               supabase_storage_admin    false    253    3959    283                       2606    29067 D   s3_multipart_uploads_parts s3_multipart_uploads_parts_bucket_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 o   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey;
       storage               supabase_storage_admin    false    284    253    3959                       2606    29062 D   s3_multipart_uploads_parts s3_multipart_uploads_parts_upload_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey FOREIGN KEY (upload_id) REFERENCES storage.s3_multipart_uploads(id) ON DELETE CASCADE;
 o   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey;
       storage               supabase_storage_admin    false    284    4034    283            �           0    16519    audit_log_entries    ROW SECURITY     =   ALTER TABLE auth.audit_log_entries ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    251            �           0    28931 
   flow_state    ROW SECURITY     6   ALTER TABLE auth.flow_state ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    281            �           0    28728 
   identities    ROW SECURITY     6   ALTER TABLE auth.identities ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    272            �           0    16512 	   instances    ROW SECURITY     5   ALTER TABLE auth.instances ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    250            �           0    28818    mfa_amr_claims    ROW SECURITY     :   ALTER TABLE auth.mfa_amr_claims ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    276            �           0    28806    mfa_challenges    ROW SECURITY     :   ALTER TABLE auth.mfa_challenges ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    275            �           0    28793    mfa_factors    ROW SECURITY     7   ALTER TABLE auth.mfa_factors ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    274            �           0    28981    one_time_tokens    ROW SECURITY     ;   ALTER TABLE auth.one_time_tokens ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    282            �           0    16501    refresh_tokens    ROW SECURITY     :   ALTER TABLE auth.refresh_tokens ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    249            �           0    28860    saml_providers    ROW SECURITY     :   ALTER TABLE auth.saml_providers ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    279            �           0    28878    saml_relay_states    ROW SECURITY     =   ALTER TABLE auth.saml_relay_states ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    280            �           0    16527    schema_migrations    ROW SECURITY     =   ALTER TABLE auth.schema_migrations ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    252            �           0    28758    sessions    ROW SECURITY     4   ALTER TABLE auth.sessions ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    273            �           0    28845    sso_domains    ROW SECURITY     7   ALTER TABLE auth.sso_domains ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    278            �           0    28836    sso_providers    ROW SECURITY     9   ALTER TABLE auth.sso_providers ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    277            �           0    16489    users    ROW SECURITY     1   ALTER TABLE auth.users ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    247            �           3256    35880 K   drug_status_updates Allow authenticated users to insert drug status updates    POLICY     �   CREATE POLICY "Allow authenticated users to insert drug status updates" ON public.drug_status_updates FOR INSERT TO authenticated WITH CHECK (true);
 e   DROP POLICY "Allow authenticated users to insert drug status updates" ON public.drug_status_updates;
       public               postgres    false    297            �           3256    35902 I   drug_status_updates Allow authenticated users to view drug status updates    POLICY     �   CREATE POLICY "Allow authenticated users to view drug status updates" ON public.drug_status_updates FOR SELECT TO authenticated USING (true);
 c   DROP POLICY "Allow authenticated users to view drug status updates" ON public.drug_status_updates;
       public               postgres    false    297            �           3256    37031 +   shipments Distributors can create shipments    POLICY     �   CREATE POLICY "Distributors can create shipments" ON public.shipments FOR INSERT TO authenticated WITH CHECK ((EXISTS ( SELECT 1
   FROM public.users
  WHERE ((users.id = auth.uid()) AND (users.role = 'distributor'::text)))));
 E   DROP POLICY "Distributors can create shipments" ON public.shipments;
       public               postgres    false    387    294    294    298            �           3256    37074 1   shipments Distributors can update their shipments    POLICY        CREATE POLICY "Distributors can update their shipments" ON public.shipments FOR UPDATE TO authenticated USING (((EXISTS ( SELECT 1
   FROM public.users
  WHERE ((users.id = auth.uid()) AND (users.role = 'distributor'::text)))) AND (sender = auth.uid())));
 K   DROP POLICY "Distributors can update their shipments" ON public.shipments;
       public               postgres    false    298    387    294    294    298            �           3256    38391 D   shipment_status_updates Users can delete status updates they created    POLICY     e  CREATE POLICY "Users can delete status updates they created" ON public.shipment_status_updates FOR DELETE TO authenticated USING (((updated_by = auth.uid()) AND (EXISTS ( SELECT 1
   FROM public.shipments
  WHERE ((shipments.shipment_id = shipment_status_updates.shipment_id) AND ((shipments.sender = auth.uid()) OR (shipments.receiver = auth.uid())))))));
 ^   DROP POLICY "Users can delete status updates they created" ON public.shipment_status_updates;
       public               postgres    false    298    298    387    300    300    300    298            �           3256    38388 K   shipment_status_updates Users can insert status updates for their shipments    POLICY     q  CREATE POLICY "Users can insert status updates for their shipments" ON public.shipment_status_updates FOR INSERT TO authenticated WITH CHECK (((updated_by = auth.uid()) AND (EXISTS ( SELECT 1
   FROM public.shipments
  WHERE ((shipments.shipment_id = shipment_status_updates.shipment_id) AND ((shipments.sender = auth.uid()) OR (shipments.receiver = auth.uid())))))));
 e   DROP POLICY "Users can insert status updates for their shipments" ON public.shipment_status_updates;
       public               postgres    false    300    298    298    387    298    300    300            �           3256    38356 .   shipments Users can insert their own shipments    POLICY     �   CREATE POLICY "Users can insert their own shipments" ON public.shipments FOR INSERT TO authenticated WITH CHECK (((sender = auth.uid()) OR (receiver = auth.uid())));
 H   DROP POLICY "Users can insert their own shipments" ON public.shipments;
       public               postgres    false    298    298    387    298            �           3256    38390 D   shipment_status_updates Users can update status updates they created    POLICY     �  CREATE POLICY "Users can update status updates they created" ON public.shipment_status_updates FOR UPDATE TO authenticated USING ((updated_by = auth.uid())) WITH CHECK (((updated_by = auth.uid()) AND (EXISTS ( SELECT 1
   FROM public.shipments
  WHERE ((shipments.shipment_id = shipment_status_updates.shipment_id) AND ((shipments.sender = auth.uid()) OR (shipments.receiver = auth.uid())))))));
 ^   DROP POLICY "Users can update status updates they created" ON public.shipment_status_updates;
       public               postgres    false    298    300    300    387    298    300    300    298    387            �           3256    38357 D   shipments Users can view shipments where they are sender or receiver    POLICY     �   CREATE POLICY "Users can view shipments where they are sender or receiver" ON public.shipments FOR SELECT TO authenticated USING (((sender = auth.uid()) OR (receiver = auth.uid())));
 ^   DROP POLICY "Users can view shipments where they are sender or receiver" ON public.shipments;
       public               postgres    false    298    298    387    298            �           3256    38389 I   shipment_status_updates Users can view status updates for their shipments    POLICY     J  CREATE POLICY "Users can view status updates for their shipments" ON public.shipment_status_updates FOR SELECT TO authenticated USING ((EXISTS ( SELECT 1
   FROM public.shipments
  WHERE ((shipments.shipment_id = shipment_status_updates.shipment_id) AND ((shipments.sender = auth.uid()) OR (shipments.receiver = auth.uid()))))));
 c   DROP POLICY "Users can view status updates for their shipments" ON public.shipment_status_updates;
       public               postgres    false    300    387    298    298    300    298            �           3256    37052 ,   shipments Users can view their own shipments    POLICY     �   CREATE POLICY "Users can view their own shipments" ON public.shipments FOR SELECT TO authenticated USING (((sender = auth.uid()) OR (receiver = auth.uid())));
 F   DROP POLICY "Users can view their own shipments" ON public.shipments;
       public               postgres    false    387    298    298    298            �           0    29443    drug_status_updates    ROW SECURITY     A   ALTER TABLE public.drug_status_updates ENABLE ROW LEVEL SECURITY;          public               postgres    false    297            �           0    29392    drugs    ROW SECURITY     3   ALTER TABLE public.drugs ENABLE ROW LEVEL SECURITY;          public               postgres    false    295            �           3256    29778    drugs drugs_insert_policy    POLICY     �   CREATE POLICY drugs_insert_policy ON public.drugs FOR INSERT WITH CHECK ((EXISTS ( SELECT 1
   FROM public.users
  WHERE ((users.id = auth.uid()) AND (users.role = 'manufacturer'::text)))));
 1   DROP POLICY drugs_insert_policy ON public.drugs;
       public               postgres    false    387    294    294    295            �           3256    29756    drugs drugs_select_policy    POLICY     K   CREATE POLICY drugs_select_policy ON public.drugs FOR SELECT USING (true);
 1   DROP POLICY drugs_select_policy ON public.drugs;
       public               postgres    false    295            �           0    29604    prescriptions    ROW SECURITY     ;   ALTER TABLE public.prescriptions ENABLE ROW LEVEL SECURITY;          public               postgres    false    301            �           3256    29866 )   prescriptions prescriptions_insert_policy    POLICY     �   CREATE POLICY prescriptions_insert_policy ON public.prescriptions FOR INSERT WITH CHECK ((EXISTS ( SELECT 1
   FROM public.users
  WHERE ((users.id = auth.uid()) AND (users.role = 'doctor'::text)))));
 A   DROP POLICY prescriptions_insert_policy ON public.prescriptions;
       public               postgres    false    294    387    301    294            �           3256    29800 0   prescriptions prescriptions_select_doctor_policy    POLICY     �   CREATE POLICY prescriptions_select_doctor_policy ON public.prescriptions FOR SELECT USING ((EXISTS ( SELECT 1
   FROM public.users
  WHERE ((users.id = auth.uid()) AND (users.role = 'doctor'::text) AND (users.id = prescriptions.doctor_id)))));
 H   DROP POLICY prescriptions_select_doctor_policy ON public.prescriptions;
       public               postgres    false    294    387    301    301    294            �           3256    29822 1   prescriptions prescriptions_select_patient_policy    POLICY     �   CREATE POLICY prescriptions_select_patient_policy ON public.prescriptions FOR SELECT USING ((EXISTS ( SELECT 1
   FROM public.users
  WHERE ((users.id = auth.uid()) AND (users.role = 'patient'::text) AND (users.id = prescriptions.patient_id)))));
 I   DROP POLICY prescriptions_select_patient_policy ON public.prescriptions;
       public               postgres    false    301    387    294    294    301            �           0    29543    shipment_status_updates    ROW SECURITY     E   ALTER TABLE public.shipment_status_updates ENABLE ROW LEVEL SECURITY;          public               postgres    false    300            �           0    29504 	   shipments    ROW SECURITY     7   ALTER TABLE public.shipments ENABLE ROW LEVEL SECURITY;          public               postgres    false    298            �           0    29336    users    ROW SECURITY     3   ALTER TABLE public.users ENABLE ROW LEVEL SECURITY;          public               postgres    false    294            �           3256    29712    users users_insert_policy    POLICY     ]   CREATE POLICY users_insert_policy ON public.users FOR INSERT WITH CHECK ((auth.uid() = id));
 1   DROP POLICY users_insert_policy ON public.users;
       public               postgres    false    387    294    294            �           3256    29690    users users_select_policy    POLICY     K   CREATE POLICY users_select_policy ON public.users FOR SELECT USING (true);
 1   DROP POLICY users_select_policy ON public.users;
       public               postgres    false    294            �           3256    29734    users users_update_policy    POLICY     X   CREATE POLICY users_update_policy ON public.users FOR UPDATE USING ((auth.uid() = id));
 1   DROP POLICY users_update_policy ON public.users;
       public               postgres    false    387    294    294            �           0    29256    messages    ROW SECURITY     8   ALTER TABLE realtime.messages ENABLE ROW LEVEL SECURITY;          realtime               supabase_realtime_admin    false    291            �           0    16540    buckets    ROW SECURITY     6   ALTER TABLE storage.buckets ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    253            �           0    16582 
   migrations    ROW SECURITY     9   ALTER TABLE storage.migrations ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    255            �           0    16555    objects    ROW SECURITY     6   ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    254            �           0    29038    s3_multipart_uploads    ROW SECURITY     C   ALTER TABLE storage.s3_multipart_uploads ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    283            �           0    29052    s3_multipart_uploads_parts    ROW SECURITY     I   ALTER TABLE storage.s3_multipart_uploads_parts ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    284            �           6104    16420    supabase_realtime    PUBLICATION     Z   CREATE PUBLICATION supabase_realtime WITH (publish = 'insert, update, delete, truncate');
 $   DROP PUBLICATION supabase_realtime;
                     postgres    false            �           6104    38293 &   supabase_realtime_messages_publication    PUBLICATION     o   CREATE PUBLICATION supabase_realtime_messages_publication WITH (publish = 'insert, update, delete, truncate');
 9   DROP PUBLICATION supabase_realtime_messages_publication;
                     supabase_admin    false            �           6106    38294 /   supabase_realtime_messages_publication messages    PUBLICATION TABLE     [   ALTER PUBLICATION supabase_realtime_messages_publication ADD TABLE ONLY realtime.messages;
          realtime               supabase_admin    false    4326    291            =
           826    16597     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES TO dashboard_user;
          auth               supabase_auth_admin    false    17            >
           826    16598     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS TO dashboard_user;
          auth               supabase_auth_admin    false    17            <
           826    16596    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     :  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO dashboard_user;
          auth               supabase_auth_admin    false    17            L
           826    16980     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     |   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON SEQUENCES TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    15            K
           826    16979     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     |   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON FUNCTIONS TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    15            J
           826    16978    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    15            O
           826    16631     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO service_role;
          graphql               supabase_admin    false    25            N
           826    16630     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO service_role;
          graphql               supabase_admin    false    25            M
           826    16629    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     e  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          graphql               supabase_admin    false    25            B
           826    16611     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO service_role;
          graphql_public               supabase_admin    false    24            D
           826    16610     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO service_role;
          graphql_public               supabase_admin    false    24            C
           826    16609    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          graphql_public               supabase_admin    false    24            I
           826    16839     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     r   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium GRANT ALL ON SEQUENCES TO pgsodium_keyholder;
          pgsodium               supabase_admin    false    19            H
           826    16838    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO pgsodium_keyholder;
          pgsodium               supabase_admin    false    19            F
           826    16836     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     x   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium_masks GRANT ALL ON SEQUENCES TO pgsodium_keyiduser;
          pgsodium_masks               supabase_admin    false    6            G
           826    16837     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     x   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium_masks GRANT ALL ON FUNCTIONS TO pgsodium_keyiduser;
          pgsodium_masks               supabase_admin    false    6            E
           826    16835    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium_masks GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO pgsodium_keyiduser;
          pgsodium_masks               supabase_admin    false    6            5
           826    16484     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO service_role;
          public               postgres    false            6
           826    16485     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO service_role;
          public               supabase_admin    false            4
           826    16483     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO service_role;
          public               postgres    false            8
           826    16487     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO service_role;
          public               supabase_admin    false            3
           826    16482    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     I  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          public               postgres    false            7
           826    16486    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     a  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          public               supabase_admin    false            @
           826    16601     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES TO dashboard_user;
          realtime               supabase_admin    false    18            A
           826    16602     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS TO dashboard_user;
          realtime               supabase_admin    false    18            ?
           826    16600    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     8  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO dashboard_user;
          realtime               supabase_admin    false    18            ;
           826    16539     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO service_role;
          storage               postgres    false    16            :
           826    16538     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO service_role;
          storage               postgres    false    16            9
           826    16537    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     M  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          storage               postgres    false    16            R
           826    31200     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA supabase_functions GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA supabase_functions GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA supabase_functions GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA supabase_functions GRANT ALL ON SEQUENCES TO service_role;
          supabase_functions               supabase_admin    false    32            Q
           826    31199     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA supabase_functions GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA supabase_functions GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA supabase_functions GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA supabase_functions GRANT ALL ON FUNCTIONS TO service_role;
          supabase_functions               supabase_admin    false    32            P
           826    31198    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA supabase_functions GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA supabase_functions GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA supabase_functions GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA supabase_functions GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          supabase_functions               supabase_admin    false    32            �           3466    16615    issue_graphql_placeholder    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_graphql_placeholder ON sql_drop
         WHEN TAG IN ('DROP EXTENSION')
   EXECUTE FUNCTION extensions.set_graphql_placeholder();
 .   DROP EVENT TRIGGER issue_graphql_placeholder;
                     supabase_admin    false    395            �           3466    16993    issue_pg_cron_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_cron_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_cron_access();
 )   DROP EVENT TRIGGER issue_pg_cron_access;
                     supabase_admin    false    390            �           3466    16613    issue_pg_graphql_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_graphql_access ON ddl_command_end
         WHEN TAG IN ('CREATE FUNCTION')
   EXECUTE FUNCTION extensions.grant_pg_graphql_access();
 ,   DROP EVENT TRIGGER issue_pg_graphql_access;
                     supabase_admin    false    394            �           3466    16594    issue_pg_net_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_net_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_net_access();
 (   DROP EVENT TRIGGER issue_pg_net_access;
                     postgres    false    391            �           3466    16616    pgrst_ddl_watch    EVENT TRIGGER     j   CREATE EVENT TRIGGER pgrst_ddl_watch ON ddl_command_end
   EXECUTE FUNCTION extensions.pgrst_ddl_watch();
 $   DROP EVENT TRIGGER pgrst_ddl_watch;
                     supabase_admin    false    392            �           3466    16617    pgrst_drop_watch    EVENT TRIGGER     e   CREATE EVENT TRIGGER pgrst_drop_watch ON sql_drop
   EXECUTE FUNCTION extensions.pgrst_drop_watch();
 %   DROP EVENT TRIGGER pgrst_drop_watch;
                     supabase_admin    false    393            �      x�ݽ��7�-�y�)��W�")1?�,����v�smw����{Q�]v�l�hg�l4lw��2(��<���G�Ɵ>��ok��u�Pz��{�`�%�ʼ,5�������_����^�����?����������������5����~����O�FY�R/%�{`K�,�U��m��^���?��.�{]s�g�������a�����m���6~���������?���w/�����?��ˏ���_���Z�>~�/?������������߿��ŗ��������7�$!�럒�$}I�V�&��������ZZ��J�)S��)d�9�����os�e}�����(��߿��?��������_��Gz8����ɷz���?����_����Q�b�wyc[��eo%��y�4���V��S��Y2>L
||��W�C���{Nն<G�Rz�t��D���fep4+��)�7~\�)mfVm������o��P��%��RM����l��fХ�Zk��$hס�Ȗ��\�����Ú��_�|��5���x)���S�e��R��W������%ڭ�ʚ�喝4۬#��e�Ȩ�j ���w�U�g���g�P�ǿ���?�$�����D��S��庍ZBkcw�Eu�?����ԃ4W�$~�h2Μ�`�+|6I�͡Z��i�_�[i.�߲�$~���D
S{Rl�q)��fy�.e��3�	���(M(�<�=2>�y�R���i���B6��SES�}���`^ٿ/���eM�1�q�?�C��	�䤊�w �٢�v���cj���I.Sj��9�p�t@<�Dy����6�"�Y���#�̀-�XN�3��3���5(I<j�� X
)���#9�^R�%A�׃����J�@�*m-7a�e��I�<�%����V���xukN:7q��{*����$���N[� W�c�)�Q#��������8�#��_R��S9$��A;��� <�5cp�TFז���a�ŗX���ZV>��Y-i[)��6�C��CJ}[��F� '%�I�r��HjTW��C��9���m� �&�w����NJ^�(���1�i�P�(sL���ª�z�l��? |����)��x�[M��~����G	�|����+�D��J|',-"L�1QGx�`Y!"7Tn��|�����!L�OI^b~!�Y�a;��u�Fc8��	_QIAGd�Q'����s��A��_�r:`ƫ�X[Ӑ@�����4C�ˀj�շ. ��1�_�EN'�;�<V��2�/F���V�@�>M�q~���m���s�����o�x��+��M��l��,F�k}
��B�1�n�
)�A��H��G���������ƹ,`%�B`|�_	���=/S��Y�Q�=ah�i�+K�1�xH?}`�gR�8���e��o��G��CK�C�Īk"�^%0��g���n��@L|��� �Z&Ь���x�[�$O�E�Y8�`a�.�Cnџ� �lݩ��1ل.w�Q�$=S��TL��Eh@e�`�l7�Um^<0@��o L��A�C�O
\�;��u��LiF�=]#0�'>y�_�W�=c ^�����X�ފ�_c�_~��˻H�O����8�?��.𶛩�L�5���9aLTQ4@W������-�}Rh��)�hi5�A@Rq��(���� �MWO�g*��a��T��� op��c�g9��E���~�l;I@S�&pv�DN�fh�=I�Y&��&���dToY�N.iu�
��T�3�f*j�dZ1_��=e`<�IGUs����#��|��ж�`�kO�6}�����D	9　�Vy�>B���h��ġa׵r����uO�s����� g60�4Q;�ptm8�6$�aqL����z�x��`po�zpe��W��w���h��4�`���%�>�_� c2������y��r�V1�׾��c�K�����A��f�Ych���ջuuq�	���Ӯ�1��S�ON�{�m��x��-	>�l��a����z`$u���$ʨqeAK�#��}=��qq7�`�ɣk)�[C��;�%�PS4�S$���X�1D�^\�A%����D�m@��"�Lj!��0����=��P29���-u�~�eg$�c��3�ر^{��iq�'	�r��H���5)�L%�?H�w_\<m\���hՁ����s�V*%4�����[=!���7V.d�Ծ��D�pN"�B���d���s_��n����H<�-������ȶ������(���/r�	T?�M��]�Ђu�1�`����X�J�/q��� ����M^G2�<B�~7������zў�I�\=9؋�MI�d~����VV	�K<�A�+�(WIw������1S�(�-�g`���c3>4���Z淚��=0��Po���twaN�%�������2QM"8�5�aB�;i% �������L L� ���EL&��a��1d���A����8S�����K,�O����۳��_����,�<vU'a>U޲����oF���� �x��9��+>�R���:��}�6plD�RZ5��!������uXJ�h�=
o0��'�m���	��g�?E�WS�*GP;v�%.@I��Sn�=|�<?���RYNb�:�`� �q��Ji�v�9RŬ�yw�x��[��z�3���j Ǚ��N���!1?֫�H5��q̭��*���I(��e�܊�=RD�Hr(/�^8�*�z�g3�(�`e3ysf	��Fs�St��h_"9���H�A�!����H��5��u��v�v� 	�{GMN(�
e��2������rZy��M<]���l'w��S�0�u`ph �ar�R=�e" ��M���*j���˅ѝWr@R���em��h���qO�P(Ā䜧fsMT��:���Mj�[���HOwm�>�X� &Juv�!�kD"̞$◑j�f�����?Pp���r_=АN8 s=�"ي�$����������%��5���%v	��Y� .�4P�f9��&�KP�/ ��Y�VA��( �>��/�d@!�o�?k�ݐ@s�
�"�]��-(���JI5E��Ā;@�	 D�G�����pB�Q�*i�mY׸���/�⁊��'��IyǒC��s�i$p
5	�If;>���ה�d�/Q�����>��%�_������`҅_%�x��f(�9s������K����|Z[�9��5���7o�v2B?j�@@~�fAۡz���.�G,�*5��d��t�L�䊱�8��:5Wk"���S��(:=]������	Ҹ�
D���'o�ʦb�Ӑ�>|v� e��0	�3�:�'�@��}�4��Qv��P�x����|+)���9�@���Ȯ"3 N��(��eVñ��q��@��/�Dv�.�880>�8�UCͪNa��?����g�rt�2��O7�ć�Z�ν�;�P�Z���؟��MJѓ�M���|��pbį�{����z�|������t�1۞]�Z�2��L5��+<�*%#�����Ӎ��|Թ���w��cw.2���O8�Vv�ǿ��ў�����-�ayW%�+���\�N��2H㕧t^�RnF ve�����i( sdd����6�G.�,�>#���������-�[�6����\t�)W�"�_�n�p<�"m6Q��$�;�_a1�I�#�V`���]����[=��.tN����C�����-��3]�
�t��>"��A*]��<��]�%g�Ԥ�%9�]'�+���s����g�=������-ٟ:w��o*���oK!"���R�H��Q��=ۅZv���TR���O�J-���|K%� O��3UW1/�((���{ڠ9���[<�wt�?yp>y0� ��U#��"��p�	��B�������������ֈ*|P�s�>j�A"�}��{��(��,Qg�_�~;����vN�;��v��bù��@4�wZ84�,9�wQ���.}˙��kh�&�k ��T[�U�lb2�כ_�34    �'���q�Д�O�*0ZX��2��"o�]!4R��7��H��R��~3�F�5��]Ib��Ui�����o��\r�ݺ?��F�h�p5[	fj�9�%��OQ��q����%%����[�mo_�8BQ�	,x�~���/P4��x�����Ll��	��ܵﲪ����=����#�Oڰ֒Ւ�PN�����b`�kZ�5�_b���ԓ'��{��P3}�����[CR+Tr���9��SW
�b'ԕs��;�V2WэޚX�#��Q�v�=a\|�Q!GOFq��=_ce�/s���'n5�\�\XE���OϪ��-yh�0vl�ַ$Ӑe�*�2i?��ɫ�tˉ�IO���VA�]qi��C���,�_����񨰤�D�}Y,uQ��O���2j�#�H��J\�������FqIع-���"C��ļJg+�w��K������4'����30~_�i��g彤��C�O�EN�S;�nH��=`�Z�H��I��Zx�̔��c���R��� �;
li�5���(���j�x[���x=��Tv(w�	� R�≌a������8�g��*�'��py����% ����m�Z��.ܪ�pLy��V��5�k���������$uk����*���ҁ�
ځ��\	�ow��P$���9���j���w�jz����i��p�Ot���7%n�b��7�O�q�VA:��9�w��W6[8�:���&������7�=�Ӎ�ԣiAk�|��H�h��2��]5��o/)��P���"����Oz�I��藷.A$��"��ٸF�s�|�瞇g��&��d��ZT��c�����T�f��?�������>;��N�S��Aӂ/�t YC�.έV�D֯�Ԟ?�v�w3�|�YA4c)KC��@���ԕ#˰
qm�yw���s܉ !�z�ؾ�Jq
Qw�4e~~��/�p�ɩ �ڵ�@̎�б��V�)��5�H�}�x�Z��n��~���]|�j,�k9؉�
�[3�mm_�v��9�FE� D*�6m.7 ���*9��#YWPw�٤� �]r��,,���
>��j�����o��3���T����:8��f�w�0���l���Qv-��CA���J]7��i�
�I����!Q���#�Q��ҟ�����o&trg�zO�t��쫘g0*k�����j�O��_}��;[���!�O��Boe���Uʚv�v��c@���t�X�5F�|(weUE� �ıTK����O��q��Ll�Z�K�F)�r_�M{����?��=�(#��c�45/A�d�;T�G�VTY�����|�rtW�[l���۴g^�EM�1�rq�����
�dۄ/�%�%,Y�'�zh{J)oMs�>����~_�h�dm0�m����y�`5~&*h��R��B�s�	�����ݷ�C�K�O�.�)��9���ơ���N����zE ��FT4������ �f�.Ki�/0���U�N4�}�h��*���;�+`6�'<���}��}aϰ�g���$2���'��D%��i�yZ* Xo�Џ��|5^��Pp��]�2n��pfN�k���8&���|6U��bn���%��(��)'�~7����a?����D7�{��|���j@�6�,�Gu�(س��R�n�O�d���W� 	���� �jle#��.,�<W><So����V=���Eͻ�L�4HC!Vj�i��zu�ѓ>�ˊ�k�>v@��R�4PK�|b�a|q�"�N��s�Z��*��P[/;�s)�Yķ���_cu��r�-i6j�� ��%��`-!�N;Y��.����R}'������9���,�SƢ }{[��c����
�!� �N��d��ԧd���Bo)h��c��K�� 4���|"
�kQY�ZRv����v͈�e�������D�r����åBc �NS���p7��+x}��"�ф�`|�"1�)�e%B���R�ў���n�?����:��y|P1��.����ָ4������m�Q�8\;����:j�V:����,�߹������#$�d!dl�����~Bޖ��4�u�"yk��wt�?�2Gk�x��f eL^Kg(���Z,o��]�3v#:�岆��v-���������iǑ�{��~G�w��T���SY���s��yA*]f ���,%����cr��H
$'���:�ln�}��
�+����uh�5
��~�t�d�PZ�N@q�9c�����}�K�H��Eڞ>g�3�o�j��5O�qưS�'��^���r�ln����}t�x8�XTOdFY�m$ͬy��Q�F(k��Sr�ҫ�vi�,�'��s�*.^_���ܵ�K��!�R�%.?�/Y�Icb͌�Qp��O�]�.:�ͱV���U/��^���(�l��M�8㨩
6�c0"Z�Y���j��l�� M9�A'�L��ݖ�x�^��.Kd,��p�w�� �67�#�j���[4����ީ"f\��"9�a��e�-����4Ѻ�/k��h�e�ۤ��y�f�x�%CP>v�Z�'�84� �D:�^j�������pͷ�K�N�:���>�:}�`�?̘zG��o��+�EJ7��t�/��L���}z\m��϶���|�"��@��UOZ%�'��]��W�5Lq�."|u���}�,�K'%0�t��镤�K��Q�3n'��$w�UJ9yLۃ2��I5z�Tǡ9lӚ[qu���1�^�%������n}�"�r���Z��Ƚ
.�	]@����oIqďzr�چJj%�	H ��8{�����҃dpL���n$�'��;ϰ�k	�[��:����}��x��OH��>^��kو��Z&�#�A>Y�_=<�[���ol|���a�+B�GNh#��~0F�̓��S�� ������W�&6��J���L-�.�y	|��~�
�F6mK�W!�#�� nM���_i\=�O.cU��
 �4 !Ct�dEW!��� fz���_��|��uj����UҐ]��`� ��7�W������o������O^E��$&0�Q=$ȻR(�t�<��o����~�'���5����g]9��l3��ڣ[Hci\Sʛ-~�/��?��3َ�\G���-m5�x�F�K�@[Q�M%.��q��?��B�MR���)cs�v�Yl����*��W�O�O���jtRMg�eJk�a��ׁK��&m�)�~�(��$'��sD�u�t\�6�64j`�ZrLV�{����o#����<Yɨ?f�g̼+;Jiմ�Xכ�\�1?[�+����������B_.�j�-��o-���%�������X:Z/����
ڒw�n P��z5�v���W�KQ|��P �$�� ��f-��ww��������B�r����P���ɣW�ѲJ�3R���7�~���Ld߄s2Aa[wYȔ��[K���@;����K/q����B9�t�ڜ%����˟��Gr��n�d�s}v�����tIO$����	BW��ž��/$zc�	����pI��]����q�]�4U� JP@b���r��������z�5Ǫ�W����= s�TbrnT~�-��P�}m\�U3:v�d+-P
��+�5�h.�ιlw0�7���n�=�xS:��l �A�/}fЊ>�-��6�,�{��c�/�[*|�>��+~5(@P@D��Sç�U�<����x*7��'�%��!�P ;2>x��R����)��xv�}wM�[M >'�.�dE �8\�����L5�����ۂ��|��r�UB��A�|�c���{\T	�*�L�j~S������za�*��I���v].>o�ЙzhN36w�*��Kh�Q��JUO&M;��d��>R܄��	��4��t_�7���b.�qp. ���c��)S8'bz{Լ�Y����w�ިБZ�Nu��;R�����/�.e�~k �ü���jE��n!|��(Z�i4�[&~�����q�����Hk�8��MO�	�R ���N���u�>�h�    82����1x�0���H�g�Q�^�^�pL��'����$���.�l��,|��%Y�;�{k�3����C�K�j1���4�4�ƨ���� �{y�n���.~)��fWع��w��:	'(R�.~(�W���Rf=��Hcg�6h��_�D!%����Čt��
��n��\��*h�@�{e�RR��q���������"��a~pM	,}W"`ʂ*�c.�}�ji�-E���`�餟L����
 �?4�łr���z�����}��T����X֮�9U�d'���h��Y����~�	;�,}�ٻ�g�C�s{�4�;^X�����.PsҖ]�LTB#�W��A��#����v�L`T_��Zy��j���1���CO�
J�-�������K�����2T�gW�����N$�`2�]�6`��~a=��c��.U�ɡ�
ʈ�l=���2Y��+"��_����L�z#�8I�N2K��u��J�NNm/p(�%�MJŉ���?�u+>ٵ��s�v��eqq�Ca~��t��b>��_�,s/�?u�QW
BZk����}!_؟K:��Y��ŋ�_0��◗Ⱥ�A�z�liN� !��TO�#7ȸ���x��W�-�f����~aa���y��\��wS���b�9�ʩ7����v���eK�N��%�|���RQ�v�����}L|��jN��z���c�O6U�t�q����CM~C�被B�1���]R ^$[��z�������]�Ű�7UP�V�7�������a�n{�tra�Kk�_�KG����ZK�Hr��pzU?���g��kIt�yp��-Rk��}�M�E��,�F�X�=�������	���?�!KXJN��%��m�k�B�]�E���hU��feIӋ���w�83��.�Z�6�/�W�pr2�7A�V����U�-º�P��m\Y���ven�"'��{͖S�0�	��Xt��)--N���3(��]�L5����� ��Hw�r����ys���Q�-��}�GL�'& ���LEh����QM#��*�qw��ǓW�!)�i����z��(�[3�O�K��D��K���a�Ab��]����w�j�h%dk)2���N���LW�vr{9����`�&_U\�k,	,�JSޫ�����-G�頚�Qr��sAï�t�g_����	E$�9���:ƌ)֓�`��K\=Pe����N5�w��o-�{j�	���	0"�A��Qh��|�������d�F�6��{��?c��_#��I�x�ZC�ޑ�	��B�J6i+>�\�����rҌ^d�^�D}��O��"=t�c��c}S��k�c�G.z����hϹÎ�  f�=(�����S��x��=��ꜘ3LnٟzƬ��:�Ͷ6�2��T�g�d��r��6��|��W��L��y�]b�u��޹��N��U�}��d�$" R
��TL�5�>�dk�-u�ي���)�-��kjJ%�y��!�o*��qi�9�|uq{�C�\.@��t��1Tfl��=���Z�5��Ni��7"���78�O$B����O=k�<Ԛ]�s�z*酵p���� ��dr̵�2 .&���RU��;l��E�
w�����$�ZViC9�(pe���UV�q�����W�S��y���5��VA3mD\ö�4
hw1��ev+�q�.�O�ۍr�'�	A!( 	�8ߨ�ւĔV3��U'��U�to+����9�����B�w`�-a���m�]=YJ���b��AdyA"=�/sWWT�.H���Vk~�Ʌ/�Z��a�߽��z76��L>(, "��H����z�쓱�t"ŕ�W�=�H.E�@�k�杗�a���\`�ի�-��.n�A��$�e���+�1���� �j�;&ŗo8�t"4�mH��ט78���m�IWڻЯ;�5g|��b���Yc]�R��_Ұ��4�F
R&c�yI�*#��E��R'�k�<����d�}�3
�i���>���}6ݕ�j����k��
����M�<|�W)F̿Y[�ħB}z!'��ޕ���_����+Ծ?S�e$�ٯ}{���H�M��dϽ�^��}bX���Z	�����.����G����'�V��w-�=$	��C`,`^8~��Լ�.�Mѳ�H9z��,�+�P�Ϲ�_W��)L�Ѭ�W�K���Cֲ���Y�.��o.� ��z)ѴF����^�| �|5?�b�z�!\t*�ò�oťW ��N`��`��+��0����w���z����Z�y@F�L�2Pr��p���w�p�]��R��෯�A1]:�2�f����Y��������_x��1:QL%�,c X��|��4�\Vכ�}_)8z>�9(�qis!���ٻ+k+�a�kr(�򕂽W�V��	��VGN��ejh�
���<��e�,�ݒ�ѵ��o1~ķS#�:����>zO=���N�Rº@�`uU3��R�[��
�%�s�(��"�F/݀���Q�y�J�[��'r��qK
����:P����C٠a�Uu�4�^=Pn�3H���P��
�,᳋���.�H{I��fs��'��=��}��	�N$������~i�Z��#�!�\!g܍Ǘ\Nd��.2K�0�o\g��w��)r)�us���e��1W�*'M�U��,Æ{���vA�%��~���9{��p�oq<i�ڢ�Kj�s�"����G�]\!Y�|s���6�=��w�.�#9��՛�k��a|iZJ%�đ����ŏO~.�K� eK�dzAx�U����cM3c��\R���Ƈ���x���r��i�sԠ�J��w�"?�&������xuL���U�H�.J X5z�X9T��PUG�����g������� ��y�)!�.m�>�xz������|�{�^Dn�՟�׵FL�9��E�V�!ZI��b��ǫ��B�D:i�ݾ�g��UÏ8yw�AS;p&by/��Cq�ߊu�,N+��+)���q��W����]:0*U`�� [r)Y��
l���>u�ٔ7�"��tݫ���]��d�ȶ:c�Y�c�u ��u`zTb�� �)%_����&��P�(;1���_��\���mx�)�
�
�گ��l>(%b}S�)��˪@>�13�T��.�¢<w��F9�rґ���;N{��sOp��斕R�F`��t�Z���̅�Gq�}�w��}D6���dbЉ��}62���	�X*���7��=���^�GE{�y���CW�Ѻ�>�>ujO��D��̋&]���/^b혦w�sӠs���Zh>�2\�|����lv�u:a(�������Jh=�@�Ts֙���<!{����S�|"��c����w&����6��c��j4�r���d������"��{�]~����y��y�.I�n�ބ�ɦ�< B����.���w�!�m�<�ۗ���g���(��^���]���Aԧ��-l�p	�O��wz����F9چ����ҟ����{-��\ce�Ş>Y:w��}E�A�,���з$לA�\\�죌�h�+���q�n�%�,Xg�^�W�+�2}���aiq�\�pI��~�%*'V�RJ{� ��Is0K���{�Z�����цH��m9H���5�h(�Zʺt�矃{���RҨ�rD0���=�M��F�ح�nK�Qy]<0$��Čs"�S��7�t"��އ�r�e?�p��K��D�o�e����]��E�69������KsQJ/��M8�ɶ�X��$%��N�ڀ}���m]�q��~��8i%�1Q.'�,_A_w��rX�V�q���hó�+���89(d�'K c/cz�Yl~(|0G
2��G���w>� �9�kz24�\���-sZȖT�岂�N)���`�q(�k<�҉ӯ��=)�UT�Q8�7��ƅ�z��JRnF�'7�s#��O�7�r1�2���u��T�ps���z��㙄����O �hi2,D�DZ��-U���T�/���U#�02�8/Ã���V�YSaew��r��{�{�Mp'�ɣ1�_������yΒC�h�Ŕ�^��<�Ϸ��?�֋� ތ׺��)�ŞH�MbaO��.�p˝�q�� �  d��vC�������������˕��'�����(_���p-'fn ���u�t6���lHOp�Y������O�+L�2�8��������[�7O^F����aMN�C����C~�)JHL��8$%����=�ث�1�,�^i�����N�8��*���S~��>h��7KF���A[i����.��7H�Ӽ�;N���`��.8��$:�e�P.Ȥ�Ի�\�����2{]T�>����+%>�>�+w������;���Ye!˺��*�k�֛q�'�Y&-9z����X>�O��N��|_=}����"�rRc��~No{#�tV�F�9�����}a�Y:jc4���W�Ў����C�fҝZ{������-@�I�E��0��Ιk���AY�Uv]����/){g��4��xTv%��"@i)����*nnğ��h�j�O��s��2Q�q0��|%�Aj鱖���D�}ǃo��T�IkNL����'�?*Z*ȩKBN"+�TL�Й���|�Z��\�<b�5P�W�rt富�?W�5Ϻ/ݲ�Pq�jD�h�kۣ�=��z���q�`ݮ0C�j�V���u�v��$zm84�-*i�_��_~���?���O����@�z�_� ����0�nI2m�kC�pQ�Ƣ�iT��-�}V�OF�9n�� cq|[sSoK=����\���!��2��z�(-%�)$ߺɃG ��jF���-^e~�_��Aj��a3�xt~lQ�(9Hl�T&�Kϝ>d$�3�����8�>T7g�}��s��=]a���~Q.'�A�I.z�~����?���Ed�H)�������-�~��M3.A���sm�pJ�ZRiX��5����T�����������B4��-�_�\<-�x� �wl�����D������� 5UU��l�����@=�宻�}�1}���l`��W3��f�;
~�s�m0�PP:s=��rE�,�9�ü[]}��J{ujk��� x��>{D@��p ���W�RZ��TrV��7�F?�%�a{�I��{ �URVW����6B�s��UJ��;���.d�������@��A��*βB#���ث�wK-py|�o�TO����u���~��{0�ei�r�fo�2<�C��3➉�N�-��M�ӭ�|>�8�:	�r��d��^̿�?���}��I���#���C�4����+U�z�o]�?���|R]%�;ٗ����a����5�w ��e��2�w��GJ��z���GtKw*rW�/>��Fs0�]�ڪ٢���3k��'	EW�7_1xpC���4;~�g#��gzA�«���ဢ�N]�X�F?����A=s�XyWi��%wǸ^���p���΍�oXԈ�|:����j���7���_n��N��`�c�=�oce�Z��� ���=�H�����5$*�<ﶪ�-eop��R%����:]�P�՟�d-'�N,���������

I���D�'�+��ч�n)�/��޶JYF ��J`]��#s(6���Rz ��o�7%9��m��f45��0]V,��������/wE4��r<����*H�R��V$J�N��$���,��1�j��(K=��B��Us^�<u�8Z�j�����/�w:y����亲�v����io���ƕ��8œ%X�7�R}qwϑ>"��&�yG?}f�+�q�U�|½g�57�7���z�� ڶ�ͽ��d�L�KNv44�����Ȕ�B_(�9�@����'��'m@<2ңȷ�&��J1���}�	����)�Mk�'�m��8�t��/�#d��[L���}�x2�k�eqa��\�����ns.�{���h�s�$8�MJ���4f�65�Ko�%�j�@��伨�����_�o�3�Izώ��rB����L�VӦ�ͥ]Ņ���I9�t�n�0{.�+\���G�G���[t��_-��醘��g���S|[� K�O��k�50��N���M��l��J,'� �q���'�i��9��ђ��2��W�ލ'�e©J=Y��������Wl���!_�^X����XJ�2�4?�,��j��rq�����>�����Z,�#0��Hvv��c)�X,�i�1d�Xֈ��S���"חL^,�h*�h�QW���8��	[\˭��O���9��/��Ma|��&ی�{������/���io�}���b�p�y��׹���5RfheCYn9���m��/��YΕN�)/]�'J�KE�-�C�씌����� H|��;�� �o�뜑|1\#���s�����`E�4�J�y��/���0��ZFb-�ޚ~��p3׈e�����$k��=QJy8!ǆmU��*������'-ն5&�[\c'�����XjB6�V�z�y���fs�Q.'�4���]FB"�
j�aT*F=���yg������ݦ&K'��9Y��A'P"�Pp���إe�}\x��c�@��D{fS�E�� @���'�a���k�n%�P�޸I������n�)�^����6@.$�:����ӑ���s��N��향/�pV] ��Js�Y�J�2K~���s����[r=ӓe�3�#�[��WT�9� �F�5�wb�c�>;���ɱ�eԪ8��!�5V �b�[��}%*�d[uƋ7���vXu�&��9��&ԻjV�Wl������o�0�b�o�T���o�4�"X%;���f(�o[��<�{��� �= �Ql'"�qpmVFHɓ����{(H�kdo%�KG�[�'}�sЦ����\;ȇq�V�Fk��5�b#��3+trgUJɖjX:�9ʷN��RS����|K��jy��︫�x��FH;`���y�&�u.��E���$���W��VP7� �S)1S�պw��d�i(B���W�����N��xO$��T=8��ЭU��ߒ�2��`���V����	ȝ}�k�(��FS��R;����g����S�4�r�,Α]%1�:] �A�`G)	|�������%3��t��(G/�q.,���>��sfd�֯��@�N�:�S�P��|7I]��IO5��/��>H�����Y���Zv��@���gi<3*��������ꢹbÙ���9T� �`��Xy|�<g�y>�UEN$��&`&�h:�_̠��P�2"�WW������\��Aރ:g#�UB[��._��2���<���8LM�.�j/��u��@�m����i`G��=&�[kA��G��+y[�L �M��;�?��Q�'�|���²T��{� �z�Lz���{��|$�Q�����E5MZ%����S�V�%��{�S�mɒn�v2xA�r�$aQ�-�����&�V���f�F���N�'��
��Uy!V��;v.ҿ��1
��3�O��I�����FQ,-ߵ�9�+�@E�ԩ�7�o�/
^=@IO�ed������SeB1���\��bKw��D��R�����2�Z�N��C�}:4je��V�{�(���orA���z��_"��xP�a�1�N�3]�"�_M��n'�FEƐ�R�	$�b�@{ ?�������� >Á`cl�B��|�+R"j �Z�1�h�}�����M�����︻�C��̽j�uװ����Z��F|�����N�k��9�Wد2{����.y^%
����������9k�CY�]��+{��s^�W�_x�҉�t��� )��ȆM$�*+�2w�:��k�u��:�.M^�D��4km�(�H�F��r�aJ}�R��^q�g�@�x�M�v�[P����毀ا��T�" ��֘�3���}�I�oGru��mj5��j��J۟��lF�LB��Yʻ������Ux'�^���<�F�Ö̰�oN+�C��BY���w�f���y�d�ȓ��������?�=H      �      x������ � �      �   �  x���˪�@���S��k�ꪾe��r)H_�50�����p��:Y��R�W���.*�T��
!���������ca�����xN�qX-�W��.ne�?��4���<<�7��mܝķ�A�\�q�������o���ѷ���|8oS#�p@Ml��A]v?��T')��qs�ߛ���u��JP�4��Q�u�F�����4XF%F�7>ҭ J��9�EW�\ߦ1��`�+��j���R��ht�E�E��Z�\����ϧ����������#�hh��)ě��R���U%d���@�(R@!�c���7��T�m�|�J�6�h�Mdl���XB߻ }cc:�S:�I�~C%z�v��hT;�ݔ~�2��ivΓ�b6MIi�$�۾\q�/�k����-e� �%pLFs�A%K�%��	�mu�H4r�qQ��¯S㟧FR����lBh���NS.��O�����~      �      x������ � �      �   S  x����nd1E뼯H��	c��}�6`�v�����i&��H[Y�pm&��L,<�B��0u���!��� V(��v!�������������:E0�L�@�
SV�vP��s�Tƒ���I��s�!���N��Y����[N4jҡ��&W'�=� M_�c�4F�C�޿��ʚ�"W��+�}N��\��>J:=���?�D�ڻ�u�+D��4bJ�8V�ń*�w�;��ǅ�dc�G!]��n�5{��@o9����ܕ�T��g�-}�I">�,x z'�ZrA��h�1����">k�f|���r����
b�M{#�I�����z�=����{�W      �      x������ � �      �      x������ � �      �      x������ � �      �     x���[O�J���_��w���7'P@P�����
*K�
�~M1���iSzїL�y�9}��_���ǅ�讬���`��nM��Z�F�2��fTG��	��0a��@
!��&0ᘊ�,	Y"�������[�u��`M�� �8�8c�#=V�� J���P$z���j�G���"��G�`a���Q���0A�(_T�¨�%�Q�	B-�̥�<�(���X�F�[?Y?ۤ3��3J�a��g��Jc!T����XǖB1��B�/�U%BK�xƽ�p���T�"����plE�9���Xc-�ǡ����>� �ϧ�Y��n��ߏ���{�e�Y���Te�S�&S5���Aӗdъf����kr�Ƨ�[���0��(IE�D	 Y�f�Z$E׏\o�3�_�J�S�����k�=�bB��x¤�rCߍ�_��c����ye]['�U���E��I>� f��ؤ4U]���3|-����jx��DD��ܾ͆�ep�<t��3��R�hOS��g^��E��n/��U��n�����v��o J��$tIP����/��"�bw��F����!�x�z�~���	 \ۇ��T���-l�al�x���ֶ׾�����U*��+�� �9<wP��T{�p�wg��E�)4l���D�p?i�a�9e~��� �݇x�,��<�B�g�al�x��M������Q��
Y~�^�s-�{ E�:�S�
ԓN|?�d[$�A��<��������Z�̂�~�+�= c���өʴG���{����ﭫU��M�^�
wz�+�O �z��L� %SB����0�H<����E<�%�I{�L�~�}��b0��0�x�j��E�1tKλw�+�����7���èqdz_�+q�x\PI������1&�1&�bbbMm���PRbb��4��b�Cr��x.��%����Ȋ�[��JDyn����2��-X	��8H�Y愮Q�f����\*�b�\�)-�_:6����e�wV���@����k������ ���(�j��G���NNN� /Eբ      �      x������ � �      �      x������ � �      �   L  x�U�ɕ1�{�G�%��?�)Z��}��,�F�����7=��`N�����ML"Zb��)�e�_S<��䋮[N��i�v�Nv8�M�Dn����~�X�[ܡ�F�Ɠ�H���S� �v^Zp�_�W��͆��/*�Z�;rUk��d�9^�æ��#��`���i;/��p�����[�S��5�C�qf�D��͹���Վ�TsF},:�./������7�p�9�U�"QSP�C홆M�D�&hZ��w7�������Î��w^�AŏZu���"�sS��ܻZ��TS|Q��{_;�EЪ<8{>�4�Cծ����������      �   �  x�͓Ak�1�ϻ�"�]t��d���z��^,��K�%���[ւ�7�j�zI !3	�<�F5R�֠:�@s	PJc�2s�J%2/j�R(��e��BhR�r����;��h\�b�Y��"Ϝ�M��r��������.o�ufu��X��?��+�κ33��/�����ݮ]�r�����6$�:su����mo�y����ڼ|�hd�q�w������-�EA�����ǈK�Z�9� �#�S�Tk��_bA��(��T~�wP��2��!���+���V���84
$q��g,#ב�<��#H�H�zd䓺yr89gա�pB%ĉ�4$$�� �#��~�*�7��Yձ������ZO�"Z�YU��2{�&{�.�+	]Ϯ?��d��O~H	�������m�3ݭ�iV���X��DB<>l�tt���9:�'ǖe��l�&�Ӑ�ɫ>4�#���ύ����Ί�zԶ�����З/u      �      x������ � �      �      x������ � �      �     x���ko�0�?w�"����{>������+���Y�5M��6@�w�]J�"Zi�b)�ǉ��ɋ�݅�2<\+eb�ƈ�0Bb��SV3r`a�T�Ѝ�$2����JW�Z�>OM2�,�l�� x#Q�;������(�$�o��7q�.ݗrpRN�/���r�C�����nu G�"a����+���Agv7ì�{X,}������>ɳ�ĺ|=��]����ެX����寿��
��U�4���5� ĚJ��n+���S%E�T�p��&u��a6v�*�6I�>��J���oW.O���z��+���]�ͨp�戴��$�5Df���e��J.���t�vf���a���:ƈD� �t���E"#bR.���*���:�;������ف?�tJK�;q8UZ��\_n���#ۯ�߲"J���CA�ǵJ \-S�T��B y�J� YP	�*�Z�<	�2�\���Ҍi\�S��KQA��$V���Ĝ�(d�!lQ�H�[�ҢI�� �I���;���ŧ��.7������G�)��*K�ҩǽ�f�>�sV��FJ�HXf�8jn�0��V��6�>��<��2�f\�&*��-��O�^h�=�P-�JQ��c��QŠ�E���7�J�8��H 2&�H��0g�H"�
E��ލ���N�)�U��j:(��;L�N����"�v)G�;���zx3��ʦ�
�,��'k��l�\d ̧T��V�8��)��J�?�RN�C�JH�<���kkk�0�v�      �      x������ � �         �  x���N1����X�m;�c�q��ѫ��(؃��
����,��
��"q�4�C����7���A��圽uP$h�V�����Z�
�B�)��������d�~O�q���d����3���dZ6��a^�����`�#0`�pq{~qK�ף��z8�Wg��b��ެ������B��q��{���w�A;~�Nz��on��z�&=��hLq�φ�n�t3Z�hF�".w5��nsg���>2��P�dY{�j��b������|���|94�w�Z�̗��>Vt/|�������!�/ 'l��4)*��ޙ���Xb�\�:�,b��f-��c�J��#�y���/�5�ޱs��N��W<$z��753�/�=H��<Q�0��(����G���r�P
� �Et5� �cSQ��L�D\��Xٷ�J��$z���CԾH�uR�&��9	�b���:Tp@��҅\M�����R���ZDo�#�eu���ǯ��l�pu��)b>�z��7@��P�y��c/B��C�.	�ʹu"��@�A3䄙��֮HUOD�����)6#0��Ҭ-u����q�hp0��������_�n�4��U�l;uw���b�0��b��w��'�\n��DJ��R��l]��"����m����[+����]���0�����vrr���	�         �  x����j[1F��Sd_dF�#i� ��
f$�'m
i\�<}eLK���"�{:ߑ䰆�ϑ�^SG�T�+�2׈�|:�2B.�)��p������|��s�x>?��|��8=�>�8};=�l�A�������L�����Vٙ7͈z��ݡ##���Ϣ�DZ�֢�RU\��iv� �$���dOy�eWT>�U V\�V�=xB�n�x%��$�&/�L��py�~ޗ8"��P!�W#�� �9�:�X(����%�����th�ͱq�=)�wD�׈k���Sm`\R����ZZ6��C�;��b�A�\P0�!Ï��g�8&��Vʨ��!r�S͘��˴%˘b�@^Tx��Ug�h/�'-{�=ˎU�B��VnWꪲb�f�%�d�i�l&R��ׁ C>�����+�~�	`��Q��̅���(	$V�!4��0e,MF�^l@D�8�uÚ;$|Ǆk��ы'ۯ��v�
c�         �  x���Kn[1���*2/dP�I�Z
��A��.��H����$�I<�\���c.��U	2�c{�<<^�����`+*��4���V,��[��󆀒�R��$Єm��7�2`ꜳ��*�FuwH ��\h�,���2�OpW���ȁ �>���[�	UE�h�Z�˯��������?��Z������vb��4Ȉ�[�����ⓨ*E4)MLj<Z�n����^oם���A�q�m��t�Kw*�����(��6J'��P���e�h�@m�sR+574��*EBX�ox@�G��33�~׳���I��ҿ��>��mӘ�.���:c�̉��JD��d]=��K:7�@�����������>����w��(��d            x������ � �      
   �   x�u�Mn�0���)�l�A3�����XQ�ȉm�A��1R+���v�����:��:F&We}���)\�d;rM0XLЕ� :��P�F�Q��1X�A�UӨ1�u9�Nr�M�r�R&�	�?��ۏL�^E�ϸ8�����Ԕ Z ٢�E�L��u����x{����t��~�4���A&      	   r  x����j�0��s����h4�|m�m�`�Ȗ܊�nq�t�O_W��=ll̂���GT��s~k�%ŬA���TN����-�1�O���/S�%����4�4�l �E�%EG&	I9
�џ ���20������;�5�u�a<�/�i~�<�>�r9�;�������:��~-xJ�}�X
� K�}5�u�RT�w��c^�T&i4�.�D��3,��2�֕a�2����xy:�]����ML�B�9?}=�x�N���5F�y���.�ؖ)��\n� l�K�2�d+�O��1��1M)�Za\�I����:7Q1�����v�n���h��y*T^g��93X�?�z�� �f�         w  x�œ�n�0���S��2H��$?GO����4u���6y�)
����@�A�~Q���K@�(�A��Iv<������MZog���A�n~T���F��'�d]Fǝ���M/y���EE@F�Vhf���i5�Ӕ9��#DC��zs���:��s~/ݜ��akݴ��-Icݜ�	9���ʌ�[[�+��۱��GD��ܨ%jʜ3n��%���͢�����~z�.�v��g��l����9
{�;?(�|V���� Q��8B��b��>��Ӑ��.y�!�U�O�]^�tf{w�u��M���[R�3I��f G�"2b!���n�?$u��n=l�[ e��M#�R흔?j�������_~,�         .  x�]лn�0����4ćdQU>"�6�kc �	f<��I�M���<���E�j�\A�V��8k�fi"�k{�#����{�w��}*��p��g��>��>�9��Ѝ��Da���.�d�s��
R�Y�[Gi�p�� �OL�����#Ƅ�<O������&��` Q;h�%��Cf��@GЙX�}��_�����ݤHiwR�K�ۊ��f6�sG6~��#��|ں���l���ӄ�)]j���F����R��-V˞$r��y�����Xu�Ĝ$LJ����;].�/"��            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      �   �  x���kn1���)z����g���ё�m�b�"@>h%)���4CN�`�������ɲ�����M(O�3!H�#p��Q%H=�)H{"YA�!�5d��HZ77u�	���am��8�j���;c����юU^q��p>\��$�aˑ"#�&��f���'���C�VF)�"�{�!@�d����z�6CD�C?H��d�Q	2a (wq��g�^���J�����S$�$l�{��p�LS����&�	�%��D��?���H:ٻ�C��_�A�l������t"阛����EaB�?�*�p7n%��q�˹.Q��Mj]��}�����
��	r�{Q�n�/Rl�1�9a��K5O]&��E��/�N�^a��U:I��R�2�"�]]Vp�8���!+��%#H���[;��+a�5zC����_$��~�#�Z�7�_t�����pܺ:���.2֡^��?���/c���             x������ � �      �   L   x�K��O�N�H���-.�/JLO�L����4202�50�5�T04�22�20�3�06�0�60  [2��b���� AZD      �   �  x�uVY��6��N�h� �9K�^�$觌���Yr���YR��G�p�4����TV�O��&�r9��U�Q�R�5W[W�&,���;��#J��TB�-�ٺ٦?�?����k�sy"���u��Ot�7)Ө"6�
����Å<J!���>lH����^nr�����$&�Tb�f7���6��9�VR�Z�%�M!�89s��}�|���.���l�U���L�r�Z)�dP�2T���l߅%Ǚ����ovoǻ�Z�������EG��$L�>pɘv
O�����qnOp���LB>l�1�F\�xoG��+i�4��f�Rx�����X��r�y9�]���(���#FB�A�f
��n�70͖��M��N���ż^��h�t�࠹(�� �2��>4w �"�	%�}�d#�)?���z\ڿ�G��TuE{�@*�R�����Y�W�n;�ly*f,_�ʭ��$�8�2���� ��)��RU���.�K�D��@]�z�_��{#���H�cH�f�����9RfQ�Kd�"OP���z[�m���ǵo���7Y�?y�W�˱SreH�-; �Փ�M��k����gͭ�	�o�|^��u��\�8��d-��1*,(�(�GNj��CV���[�9h�ܳ�k�s{ N�q9-�|kZ����e��z�b5B�1�ʐ�=S�ě�]��m�v��6�����S�T���@#��Z�r��.����;�K��������Η�(�%�'�X�˺a��u�-*[`�S)��1#��(>�|��}�L�k�Bn��FK>5��bw!A�����CX����u�|9CP`E��y���̠V+�<��X&i�h=lAj��Rp�Ov�!'z�������*ߺ^o� ��?f�J\�
�R�Yy0��9psX9�/Ccܯ�;�D��q�]�<���Y������tc!�,)G�גZ�Y�7��DHvX�!$
abk��}�	�eY�Q�)R�zDPk���d����Z�d���8��:
$����Oa�
T��/�����{	�޶N���'�u/�YC�?�!��y{�����JrP��ٕT���G/5�¶檨\�>G�g�ybg.����7KO�o�׀���s+���j��m?P��__��2ѝ(/�b�z<���%g�;�ɿ9;1���$�|O����,����p�<N���ۘF��_�ԡ�7�Č��??L������      �   �  x�՗Mo�F����0|m�����S��ڢ@}*�_�Y$�M�w��IdSid�(|�H�.���;�.��]�*V�LMVE�U���r;I�>��7�X���o���,�������nX��ܟ\�rB@V�V�����u�!|�1�t�3ҝ�1~����^�������꼶Z��N�R�����*ʣ&Mο?;�.���C;��]����z�?��b�����2���_�~9FW��4Ɩ�~�ˢ-jc�Vp�[�� �����+�j�������ao�a������U_��	��IL!���\#V�!� �)�2&�<�q;߽?�vs��6Mʄ�T���Vsr��u�v=���_���uɹ��_>&�3cf��H>�',���*K�%��L� �Ps�|�'�@��\d���Cdy�ʷS�n���������A��MZD�ת[2�Q��
���J.IS1�#s�V�(#��R��(�c̆���_��O/v�7���/���<�^
��8CV�xT���\Ȟm������iY��H@���ϨPc�V7'���x���ߔc�����'})�>�`jՠI�d��2�x)UE�I��9,;����k%��D�	X�Q&[C�p8�9�oWy����X]χ����m�NU:���vV��{�P��f�;��O��Ӿߐ�7(t�r��Å�K��5����K�3�Z�ɋ}s%r���Ao%$��`�Q���B��H�;p.
w7E�ӣ�(���ş�8�Y#>Do&�uD��h�>G{��R�x���r�.
,�e��K;���1Bӎ��K�hcV䠢f"&���}�����ܴ%�C�xHm����A,���[j��Bq�<��O���Gq#Os*�r�'#U.�"� Ue����]��2��6�ʥ�MG�o�����l���������~&��~5��̴��&@&:�dp�٣�{�|ÐPVY�ĩ���g�O9��>3��?$vXUƝ��}��)�����Mk��R�|!S��x�05[�c^&(5*�\Y\i�rl�^�����I2t��#MY7׉5
t I~��e$IY�N�3�k"������xN�=j�5D��)��UcalA~��꬜�9��.3i�����n.�;.X�^�{���)��/��ä�e����,���c�E	uC#�X^u���� ]�ǉ      �      x������ � �      �      x������ � �           x���ˎ$�E��Wxo(AƓ�o1 ؒ 	�eC��{_2X5-wi���bfs��<��%�}E�}������߿��?���������~������~���}E����_7�S�o�߄/w�?��U+tыdp�	����tiS��E�r�j�}B�( Z��ǟ������o�{����j�ڐ�Wi��@�M�����⟀�z�Z�K�$_�܌&���� ,o�^�՗��z��ji�0�4��L2?��au}�F��C��t9���[�H��Oؤ4=��i��d��i�4;���%}H���J����J�E���e��q	���zii���5Z]u�F���ZNL�j���j���#�{��M����y`�5�D�;�B���>��δ�b�Bi�;Ƅ7�khk#0R(�p���tus�M���/��elLK�Bi���YQ\{�ha/���O��MP��½P��E�z�wn!�(�vxlk܅�z����>�/VZ�[������K��0���3���T].��_i�����a)��80��4L�m�pV↪�9]3Q|��Y�'F޴c��"�6^8+���jt�j�{��O̐na1�"Y����1Z�R�d-��]ý��6Ҋd-��u2�섊d-~b��E1&�Y����F����]K��Ł���9X��N�ȁŁ�8JS�H�b��T�K��D{���/0�H�b����E]0�^�Q4mq`�<y-ZjѴŁ�WufZ/��h�b`0����X�)M[�Z�f�4\4m��nŠX$�-�9���0̭�K�M[�cE,n�k����h/z`1��i�U�OӋX�X4�Y��b7ňw�X�Z-v 1(��[m����bf�wZ%eT�@ⶺbLCEׇ2.v 10X0�7�#�$���m�XVb���	��Z+��xcP��R��Ų?1Z{��^�ŲOL_���X��(����k�ů0�x��W*���0��\��a���^��Y�#=�[.ų?1L�y��O[��h���Q��~n���.L��㥼x���`�F�mz��m�v�j�j�6���Ł���t_O�k�i�bLE���Vz����D�K,`:�~b10�"oD��Υ�X�0�j��R)��b�_�]Ԣ�����a�F�?֭����Sxӽ��m���M�K?�xaF�@�QƉ�6G����ZƁŘ
`���l��Q�VƁ�0TƁ�0\Ɓ�0RƁ�0ZƁ�0VƁ�1���Vi/���A1����q`q`xx��iȁ���rt����t"�ϝ?1j��@'*/�v2�t"�#��� �D�qgb�
@'B/�!�7T�@���j�u���9pzr:1�1�Ё�"�]��u����e�Lw�
Hi�o��8b�9��V�w v�P��{F}�@l���Ӧ��'h��6��ә�d,�+d�z�T �~���N�f����^q�u:�{Ł��d�V���WH���^pN��=Z����&�L����@*�=Ё�rA�&�NG|�z:�X�Љ�<g��awKP:��=9�F�
�N��+��a}7�N'}�ag���Y��k\�b�Hi��	��yl�Љ�:�P��cW�N�^ &���5ϓ'^oP�N�~_@���,  �x�@�eT�N_8N�hkx����ު��K��n"x��6Hg,_�>�����aiGP;j�!v: � ���'��-;n�ar�J��!���͌}�b�c�	�+��E��@i�W��f��^�A�t�9��u���t�<��yڨ�e� t`�G�N�/A0;	���t(�
�0;���t0���� ʹiiߧ�f����d���l�G����o�N�B����Q���7��j�>N���tH�q��O*�NǄ iE��5��'���0@h�A葢1���
��|��/�����aq��f�� ��N_�`v:3�k�"���6x��<�6��p�aV�Hk0;�>@ܼjLjf����:�����`v>;f~�|Okf���'�z��f��ùR{k�j�eh�G��	�+��g�<'�jX�t�}�f�S� 9�:��D0;�#>@Z1ϊ5���|��o���.#������ ���غ�f������v��b�<�.>@}�^)94�ǋ�[g �@�"��_סy>b|�0w���+d���k����A=p��S�8@�K�D
@���l���ɻ�:* �C>@>�� ����+��O&�^�m�P+����{�(�|V��!Nн[//�(�|z����#���_~��â>ƽ�`;�R��=�+�%�o.ʎ�ЎL�#�p�)T/�lno��G2�|�Kuo��y#&W�AB�W>cމ�
�x�Ĭ��j� ��� �EIY����S�]��~<6WO�]������;%�X67D��3�Z�;C�`؃�*űt@ �3D��{P�ا��B����楱���3�P�_�������HF��k���A��dt��nIb�*"@s	�  冁 ��M��O�Hf����L�q�����v,�w���Y�;�p5ڟ%�S߃�T�{�yS2��>Av��Zl�Ѻ+�[(�a��1hޖLƩ�yg����'�&��0X� P�eNH�W��~�:�� A�d��;�Y� X�LW߃�4nIӼF�LW�7Bh^�L����~������t�5���JW�0��i쫴��vG��:��ֵ���4�t�3.i'W� �@�͑�s����5@���8@i�u�es��&����|��`E\���'C�����m�O���@J�#`���뼗����]7 7`��'�ڜl,*@����.��1%ZS������Ha�t��+@{gi���x�<j��k?-�En��]�=1�l�E�$�� ���&��@���ڡ�Ncb��3A�������$��fx�Uԕޮ��Xԕޮ��Xԕޮ��X�U2,^ �?��|�)S@ J�4W�8@�kgc[�����v6��C��v��q��
��}��Z�v�˔����jI�OP�\h_�����Hv�@�������P� �w 3� X��D� �\���B���#��X��_V��В�m=@�8�=�4X���߃F���z�=b����+�}/C���u�Zj��Y�o���L��>�$��G�soװv۳G}$�h�lͭ������"T���Œ̦�����B.dtK2�~��}W��<���{��~��F��x��=�s/�J)���*         P   x����,�L��4202�50�5�P04�21�24�306�42�60��XXZ�Ǘ�$��Ƨ%������ �r�            x������ � �            x������ � �      �      x������ � �     