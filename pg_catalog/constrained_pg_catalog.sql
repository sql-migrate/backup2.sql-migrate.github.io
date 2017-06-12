--
-- PostgreSQL database dump
--

-- Dumped from database version 10beta1
-- Dumped by pg_dump version 10beta1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: constrained_pg_catalog; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA constrained_pg_catalog;


SET search_path = constrained_pg_catalog, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pg_aggregate; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_aggregate (
    aggfnoid regproc NOT NULL,
    aggkind "char" NOT NULL,
    aggnumdirectargs smallint NOT NULL,
    aggtransfn regproc NOT NULL,
    aggfinalfn regproc NOT NULL,
    aggcombinefn regproc NOT NULL,
    aggserialfn regproc NOT NULL,
    aggdeserialfn regproc NOT NULL,
    aggmtransfn regproc NOT NULL,
    aggminvtransfn regproc NOT NULL,
    aggmfinalfn regproc NOT NULL,
    aggfinalextra boolean NOT NULL,
    aggmfinalextra boolean NOT NULL,
    aggsortop oid NOT NULL,
    aggtranstype oid NOT NULL,
    aggtransspace integer NOT NULL,
    aggmtranstype oid NOT NULL,
    aggmtransspace integer NOT NULL,
    agginitval text,
    aggminitval text
);


SET default_with_oids = true;

--
-- Name: pg_am; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_am (
    amname name NOT NULL,
    amhandler regproc NOT NULL,
    amtype "char" NOT NULL
);


--
-- Name: pg_amop; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_amop (
    amopfamily oid NOT NULL,
    amoplefttype oid NOT NULL,
    amoprighttype oid NOT NULL,
    amopstrategy smallint NOT NULL,
    amoppurpose "char" NOT NULL,
    amopopr oid NOT NULL,
    amopmethod oid NOT NULL,
    amopsortfamily oid NOT NULL
);


--
-- Name: pg_amproc; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_amproc (
    amprocfamily oid NOT NULL,
    amproclefttype oid NOT NULL,
    amprocrighttype oid NOT NULL,
    amprocnum smallint NOT NULL,
    amproc regproc NOT NULL
);


--
-- Name: pg_attrdef; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_attrdef (
    adrelid oid NOT NULL,
    adnum smallint NOT NULL,
    adbin pg_node_tree,
    adsrc text
);


SET default_with_oids = false;

--
-- Name: pg_attribute; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_attribute (
    attrelid oid NOT NULL,
    attname name NOT NULL,
    atttypid oid NOT NULL,
    attstattarget integer NOT NULL,
    attlen smallint NOT NULL,
    attnum smallint NOT NULL,
    attndims integer NOT NULL,
    attcacheoff integer NOT NULL,
    atttypmod integer NOT NULL,
    attbyval boolean NOT NULL,
    attstorage "char" NOT NULL,
    attalign "char" NOT NULL,
    attnotnull boolean NOT NULL,
    atthasdef boolean NOT NULL,
    attidentity "char" NOT NULL,
    attisdropped boolean NOT NULL,
    attislocal boolean NOT NULL,
    attinhcount integer NOT NULL,
    attcollation oid NOT NULL,
    attacl aclitem[],
    attoptions text[],
    attfdwoptions text[]
);


--
-- Name: pg_auth_members; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_auth_members (
    roleid oid NOT NULL,
    member oid NOT NULL,
    grantor oid NOT NULL,
    admin_option boolean NOT NULL
);


SET default_with_oids = true;

--
-- Name: pg_authid; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_authid (
    rolname name NOT NULL,
    rolsuper boolean NOT NULL,
    rolinherit boolean NOT NULL,
    rolcreaterole boolean NOT NULL,
    rolcreatedb boolean NOT NULL,
    rolcanlogin boolean NOT NULL,
    rolreplication boolean NOT NULL,
    rolbypassrls boolean NOT NULL,
    rolconnlimit integer NOT NULL,
    rolpassword text,
    rolvaliduntil timestamp with time zone
);


--
-- Name: pg_cast; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_cast (
    castsource oid NOT NULL,
    casttarget oid NOT NULL,
    castfunc oid NOT NULL,
    castcontext "char" NOT NULL,
    castmethod "char" NOT NULL
);


--
-- Name: pg_class; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_class (
    relname name NOT NULL,
    relnamespace oid NOT NULL,
    reltype oid NOT NULL,
    reloftype oid NOT NULL,
    relowner oid NOT NULL,
    relam oid NOT NULL,
    relfilenode oid NOT NULL,
    reltablespace oid NOT NULL,
    relpages integer NOT NULL,
    reltuples real NOT NULL,
    relallvisible integer NOT NULL,
    reltoastrelid oid NOT NULL,
    relhasindex boolean NOT NULL,
    relisshared boolean NOT NULL,
    relpersistence "char" NOT NULL,
    relkind "char" NOT NULL,
    relnatts smallint NOT NULL,
    relchecks smallint NOT NULL,
    relhasoids boolean NOT NULL,
    relhaspkey boolean NOT NULL,
    relhasrules boolean NOT NULL,
    relhastriggers boolean NOT NULL,
    relhassubclass boolean NOT NULL,
    relrowsecurity boolean NOT NULL,
    relforcerowsecurity boolean NOT NULL,
    relispopulated boolean NOT NULL,
    relreplident "char" NOT NULL,
    relispartition boolean NOT NULL,
    relfrozenxid xid NOT NULL,
    relminmxid xid NOT NULL,
    relacl aclitem[],
    reloptions text[],
    relpartbound pg_node_tree
);


--
-- Name: pg_collation; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_collation (
    collname name NOT NULL,
    collnamespace oid NOT NULL,
    collowner oid NOT NULL,
    collprovider "char" NOT NULL,
    collencoding integer NOT NULL,
    collcollate name NOT NULL,
    collctype name NOT NULL,
    collversion text
);


--
-- Name: pg_constraints; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_constraints (
    conname name NOT NULL,
    connamespace oid NOT NULL,
    contype "char" NOT NULL,
    condeferrable boolean NOT NULL,
    condeferred boolean NOT NULL,
    convalidated boolean NOT NULL,
    conrelid oid NOT NULL,
    contypid oid NOT NULL,
    conindid oid NOT NULL,
    confrelid oid NOT NULL,
    confupdtype "char" NOT NULL,
    confdeltype "char" NOT NULL,
    confmatchtype "char" NOT NULL,
    conislocal boolean NOT NULL,
    coninhcount integer NOT NULL,
    connoinherit boolean NOT NULL,
    conkey smallint[],
    confkey smallint[],
    conpfeqop oid[],
    conppeqop oid[],
    conffeqop oid[],
    conexclop oid[],
    conbin pg_node_tree,
    consrc text
);


--
-- Name: pg_conversion; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_conversion (
    conname name NOT NULL,
    connamespace oid NOT NULL,
    conowner oid NOT NULL,
    conforencoding integer NOT NULL,
    contoencoding integer NOT NULL,
    conproc regproc NOT NULL,
    condefault boolean NOT NULL
);


--
-- Name: pg_database; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_database (
    datname name NOT NULL,
    datdba oid NOT NULL,
    encoding integer NOT NULL,
    datcollate name NOT NULL,
    datctype name NOT NULL,
    datistemplate boolean NOT NULL,
    datallowconn boolean NOT NULL,
    datconnlimit integer NOT NULL,
    datlastsysoid oid NOT NULL,
    datfrozenxid xid NOT NULL,
    datminmxid xid NOT NULL,
    dattablespace oid NOT NULL,
    datacl aclitem[]
);


SET default_with_oids = false;

--
-- Name: pg_db_role_setting; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_db_role_setting (
    setdatabase oid NOT NULL,
    setrole oid NOT NULL,
    setconfig text[]
);


SET default_with_oids = true;

--
-- Name: pg_default_acl; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_default_acl (
    defaclrole oid NOT NULL,
    defaclnamespace oid NOT NULL,
    defaclobjtype "char" NOT NULL,
    defaclacl aclitem[]
);


SET default_with_oids = false;

--
-- Name: pg_depend; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_depend (
    classid oid NOT NULL,
    objid oid NOT NULL,
    objsubid integer NOT NULL,
    refclassid oid NOT NULL,
    refobjid oid NOT NULL,
    refobjsubid integer NOT NULL,
    deptype "char" NOT NULL
);


--
-- Name: pg_description; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_description (
    objoid oid NOT NULL,
    classoid oid NOT NULL,
    objsubid integer NOT NULL,
    description text NOT NULL
);


SET default_with_oids = true;

--
-- Name: pg_enum; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_enum (
    enumtypid oid NOT NULL,
    enumsortorder real NOT NULL,
    enumlabel name NOT NULL
);


--
-- Name: pg_event_trigger; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_event_trigger (
    evtname name NOT NULL,
    evtevent name NOT NULL,
    evtowner oid NOT NULL,
    evtfoid oid NOT NULL,
    evtenabled "char" NOT NULL,
    evttags text[]
);


--
-- Name: pg_extension; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_extension (
    extname name NOT NULL,
    extowner oid NOT NULL,
    extnamespace oid NOT NULL,
    extrelocatable boolean NOT NULL,
    extversion text NOT NULL,
    extconfig oid[],
    extcondition text[]
);


--
-- Name: pg_foreign_data_wrapper; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_foreign_data_wrapper (
    fdwname name NOT NULL,
    fdwowner oid NOT NULL,
    fdwhandler oid NOT NULL,
    fdwvalidator oid NOT NULL,
    fdwacl aclitem[],
    fdwoptions text[]
);


--
-- Name: pg_foreign_server; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_foreign_server (
    srvname name NOT NULL,
    srvowner oid NOT NULL,
    srvfdw oid NOT NULL,
    srvtype text,
    srvversion text,
    srvacl aclitem[],
    srvoptions text[]
);


SET default_with_oids = false;

--
-- Name: pg_foreign_table; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_foreign_table (
    ftrelid oid NOT NULL,
    ftserver oid NOT NULL,
    ftoptions text[]
);


--
-- Name: pg_index; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_index (
    indexrelid oid NOT NULL,
    indrelid oid NOT NULL,
    indnatts smallint NOT NULL,
    indisunique boolean NOT NULL,
    indisprimary boolean NOT NULL,
    indisexclusion boolean NOT NULL,
    indimmediate boolean NOT NULL,
    indisclustered boolean NOT NULL,
    indisvalid boolean NOT NULL,
    indcheckxmin boolean NOT NULL,
    indisready boolean NOT NULL,
    indislive boolean NOT NULL,
    indisreplident boolean NOT NULL,
    indkey int2vector NOT NULL,
    indcollation oidvector NOT NULL,
    indclass oidvector NOT NULL,
    indoption int2vector NOT NULL,
    indexprs pg_node_tree,
    indpred pg_node_tree
);


--
-- Name: pg_inherits; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_inherits (
    inhrelid oid NOT NULL,
    inhparent oid NOT NULL,
    inhseqno integer NOT NULL
);


--
-- Name: pg_init_privs; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_init_privs (
    objoid oid NOT NULL,
    classoid oid NOT NULL,
    objsubid integer NOT NULL,
    privtype "char" NOT NULL,
    initprivs aclitem[] NOT NULL
);


SET default_with_oids = true;

--
-- Name: pg_language; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_language (
    lanname name NOT NULL,
    lanowner oid NOT NULL,
    lanispl boolean NOT NULL,
    lanpltrusted boolean NOT NULL,
    lanplcallfoid oid NOT NULL,
    laninline oid NOT NULL,
    lanvalidator oid NOT NULL,
    lanacl aclitem[]
);


SET default_with_oids = false;

--
-- Name: pg_largeobject; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_largeobject (
    loid oid NOT NULL,
    pageno integer NOT NULL,
    data bytea NOT NULL
);


SET default_with_oids = true;

--
-- Name: pg_largeobject_metadata; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_largeobject_metadata (
    lomowner oid NOT NULL,
    lomacl aclitem[]
);


--
-- Name: pg_namespace; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_namespace (
    nspname name NOT NULL,
    nspowner oid NOT NULL,
    nspacl aclitem[]
);


--
-- Name: pg_opclass; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_opclass (
    opcmethod oid NOT NULL,
    opcname name NOT NULL,
    opcnamespace oid NOT NULL,
    opcowner oid NOT NULL,
    opcfamily oid NOT NULL,
    opcintype oid NOT NULL,
    opcdefault boolean NOT NULL,
    opckeytype oid NOT NULL
);


--
-- Name: pg_operator; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_operator (
    oprname name NOT NULL,
    oprnamespace oid NOT NULL,
    oprowner oid NOT NULL,
    oprkind "char" NOT NULL,
    oprcanmerge boolean NOT NULL,
    oprcanhash boolean NOT NULL,
    oprleft oid NOT NULL,
    oprright oid NOT NULL,
    oprresult oid NOT NULL,
    oprcom oid NOT NULL,
    oprnegate oid NOT NULL,
    oprcode regproc NOT NULL,
    oprrest regproc NOT NULL,
    oprjoin regproc NOT NULL
);


--
-- Name: pg_opfamily; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_opfamily (
    opfmethod oid NOT NULL,
    opfname name NOT NULL,
    opfnamespace oid NOT NULL,
    opfowner oid NOT NULL
);


SET default_with_oids = false;

--
-- Name: pg_partitioned_table; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_partitioned_table (
    partrelid oid NOT NULL,
    partstrat "char" NOT NULL,
    partnatts smallint NOT NULL,
    partattrs int2vector NOT NULL,
    partclass oidvector NOT NULL,
    partcollation oidvector NOT NULL,
    partexprs pg_node_tree
);


--
-- Name: pg_pltemplate; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_pltemplate (
    tmplname name NOT NULL,
    tmpltrusted boolean NOT NULL,
    tmpldbacreate boolean NOT NULL,
    tmplhandler text NOT NULL,
    tmplinline text,
    tmplvalidator text,
    tmpllibrary text NOT NULL,
    tmplacl aclitem[]
);


SET default_with_oids = true;

--
-- Name: pg_policy; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_policy (
    polname name NOT NULL,
    polrelid oid NOT NULL,
    polcmd "char" NOT NULL,
    polpermissive boolean NOT NULL,
    polroles oid[],
    polqual pg_node_tree,
    polwithcheck pg_node_tree
);


--
-- Name: pg_proc; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_proc (
    proname name NOT NULL,
    pronamespace oid NOT NULL,
    proowner oid NOT NULL,
    prolang oid NOT NULL,
    procost real NOT NULL,
    prorows real NOT NULL,
    provariadic oid NOT NULL,
    protransform regproc NOT NULL,
    proisagg boolean NOT NULL,
    proiswindow boolean NOT NULL,
    prosecdef boolean NOT NULL,
    proleakproof boolean NOT NULL,
    proisstrict boolean NOT NULL,
    proretset boolean NOT NULL,
    provolatile "char" NOT NULL,
    proparallel "char" NOT NULL,
    pronargs smallint NOT NULL,
    pronargdefaults smallint NOT NULL,
    prorettype oid NOT NULL,
    proargtypes oidvector NOT NULL,
    proallargtypes oid[],
    proargmodes "char"[],
    proargnames text[],
    proargdefaults pg_node_tree,
    protrftypes oid[],
    prosrc text NOT NULL,
    probin text,
    proconfig text[],
    proacl aclitem[]
);


--
-- Name: pg_publication; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_publication (
    pubname name NOT NULL,
    pubowner oid NOT NULL,
    puballtables boolean NOT NULL,
    pubinsert boolean NOT NULL,
    pubupdate boolean NOT NULL,
    pubdelete boolean NOT NULL
);


--
-- Name: pg_publication_rel; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_publication_rel (
    prpubid oid NOT NULL,
    prrelid oid NOT NULL
);


SET default_with_oids = false;

--
-- Name: pg_range; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_range (
    rngtypid oid NOT NULL,
    rngsubtype oid NOT NULL,
    rngcollation oid NOT NULL,
    rngsubopc oid NOT NULL,
    rngcanonical regproc NOT NULL,
    rngsubdiff regproc NOT NULL
);


--
-- Name: pg_replication_origin; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_replication_origin (
    roident oid NOT NULL,
    roname text NOT NULL
);


SET default_with_oids = true;

--
-- Name: pg_rewrite; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_rewrite (
    rulename name NOT NULL,
    ev_class oid NOT NULL,
    ev_type "char" NOT NULL,
    ev_enabled "char" NOT NULL,
    is_instead boolean NOT NULL,
    ev_qual pg_node_tree,
    ev_action pg_node_tree
);


SET default_with_oids = false;

--
-- Name: pg_seclabel; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_seclabel (
    objoid oid NOT NULL,
    classoid oid NOT NULL,
    objsubid integer NOT NULL,
    provider text NOT NULL,
    label text NOT NULL
);


--
-- Name: pg_sequence; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_sequence (
    seqrelid oid NOT NULL,
    seqtypid oid NOT NULL,
    seqstart bigint NOT NULL,
    seqincrement bigint NOT NULL,
    seqmax bigint NOT NULL,
    seqmin bigint NOT NULL,
    seqcache bigint NOT NULL,
    seqcycle boolean NOT NULL
);


--
-- Name: pg_shdepend; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_shdepend (
    dbid oid NOT NULL,
    classid oid NOT NULL,
    objid oid NOT NULL,
    objsubid integer NOT NULL,
    refclassid oid NOT NULL,
    refobjid oid NOT NULL,
    deptype "char" NOT NULL
);


--
-- Name: pg_shdescription; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_shdescription (
    objoid oid NOT NULL,
    classoid oid NOT NULL,
    description text NOT NULL
);


--
-- Name: pg_shseclabel; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_shseclabel (
    objoid oid NOT NULL,
    classoid oid NOT NULL,
    provider text NOT NULL,
    label text NOT NULL
);


--
-- Name: pg_statistic; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_statistic (
    starelid oid NOT NULL,
    staattnum smallint NOT NULL,
    stainherit boolean NOT NULL,
    stanullfrac real NOT NULL,
    stawidth integer NOT NULL,
    stadistinct real NOT NULL,
    stakind1 smallint NOT NULL,
    stakind2 smallint NOT NULL,
    stakind3 smallint NOT NULL,
    stakind4 smallint NOT NULL,
    stakind5 smallint NOT NULL,
    staop1 oid NOT NULL,
    staop2 oid NOT NULL,
    staop3 oid NOT NULL,
    staop4 oid NOT NULL,
    staop5 oid NOT NULL,
    stanumbers1 real[],
    stanumbers2 real[],
    stanumbers3 real[],
    stanumbers4 real[],
    stanumbers5 real[],
    stavalues1 real[],
    stavalues2 real[],
    stavalues3 real[],
    stavalues4 real[],
    stavalues5 real[]
);


SET default_with_oids = true;

--
-- Name: pg_statistic_ext; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_statistic_ext (
    stxrelid oid NOT NULL,
    stxname name NOT NULL,
    stxnamespace oid NOT NULL,
    stxowner oid NOT NULL,
    stxkeys int2vector NOT NULL,
    stxkind "char"[] NOT NULL,
    stxndistinct pg_ndistinct,
    stxdependencies pg_dependencies
);


--
-- Name: pg_subscription; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_subscription (
    subdbid oid NOT NULL,
    subname name NOT NULL,
    subowner oid NOT NULL,
    subenabled boolean NOT NULL,
    subconninfo text NOT NULL,
    subslotname name NOT NULL,
    subsynccommit text NOT NULL,
    subpublications text[] NOT NULL
);


SET default_with_oids = false;

--
-- Name: pg_subscription_rel; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_subscription_rel (
    srsubid oid NOT NULL,
    srrelid oid NOT NULL,
    srsubstate "char" NOT NULL,
    srsublsn pg_lsn NOT NULL
);


SET default_with_oids = true;

--
-- Name: pg_tablespace; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_tablespace (
    spcname name NOT NULL,
    spcowner oid NOT NULL,
    spcacl aclitem[],
    spcoptions text[]
);


--
-- Name: pg_transform; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_transform (
    trftype oid NOT NULL,
    trflang oid NOT NULL,
    trffromsql regproc NOT NULL,
    trftosql regproc NOT NULL
);


--
-- Name: pg_trigger; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_trigger (
    tgrelid oid NOT NULL,
    tgname name NOT NULL,
    tgfoid oid NOT NULL,
    tgtype smallint NOT NULL,
    tgenabled "char" NOT NULL,
    tgisinternal boolean NOT NULL,
    tgconstrrelid oid NOT NULL,
    tgconstrindid oid NOT NULL,
    tgconstraint oid NOT NULL,
    tgdeferrable boolean NOT NULL,
    tginitdeferred boolean NOT NULL,
    tgnargs smallint NOT NULL,
    tgattr int2vector NOT NULL,
    tgargs bytea NOT NULL,
    tgqual pg_node_tree,
    tgoldtable name,
    tgnewtable name
);


--
-- Name: pg_ts_config; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_ts_config (
    cfgname name NOT NULL,
    cfgnamespace oid NOT NULL,
    cfgowner oid NOT NULL,
    cfgparser oid NOT NULL
);


SET default_with_oids = false;

--
-- Name: pg_ts_config_map; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_ts_config_map (
    mapcfg oid NOT NULL,
    maptokentype integer NOT NULL,
    mapseqno integer NOT NULL,
    mapdict oid NOT NULL
);


SET default_with_oids = true;

--
-- Name: pg_ts_dict; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_ts_dict (
    dictname name NOT NULL,
    dictnamespace oid NOT NULL,
    dictowner oid NOT NULL,
    dicttemplate oid NOT NULL,
    dictinitoption text
);


--
-- Name: pg_ts_parser; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_ts_parser (
    prsname name NOT NULL,
    prsnamespace oid NOT NULL,
    prsstart regproc NOT NULL,
    prstoken regproc NOT NULL,
    prsend regproc NOT NULL,
    prsheadline regproc NOT NULL,
    prslextype regproc NOT NULL
);


--
-- Name: pg_ts_template; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_ts_template (
    tmplname name NOT NULL,
    tmplnamespace oid NOT NULL,
    tmplinit regproc NOT NULL,
    tmpllexize regproc NOT NULL
);


--
-- Name: pg_type; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_type (
    typname name NOT NULL,
    typnamespace oid NOT NULL,
    typowner oid NOT NULL,
    typlen smallint NOT NULL,
    typbyval boolean NOT NULL,
    typtype "char" NOT NULL,
    typcategory "char" NOT NULL,
    typispreferred boolean NOT NULL,
    typisdefined boolean NOT NULL,
    typdelim "char" NOT NULL,
    typrelid oid NOT NULL,
    typelem oid NOT NULL,
    typarray oid NOT NULL,
    typinput regproc NOT NULL,
    typoutput regproc NOT NULL,
    typreceive regproc NOT NULL,
    typsend regproc NOT NULL,
    typmodin regproc NOT NULL,
    typmodout regproc NOT NULL,
    typanalyze regproc NOT NULL,
    typalign "char" NOT NULL,
    typstorage "char" NOT NULL,
    typnotnull boolean NOT NULL,
    typbasetype oid NOT NULL,
    typtypmod integer NOT NULL,
    typndims integer NOT NULL,
    typcollation oid NOT NULL,
    typdefaultbin pg_node_tree,
    typdefault text,
    typacl aclitem[]
);


--
-- Name: pg_user_mapping; Type: TABLE; Schema: constrained_pg_catalog; Owner: -
--

CREATE TABLE pg_user_mapping (
    umuser oid NOT NULL,
    umserver oid NOT NULL,
    umoptions text[]
);


--
-- Name: pg_am pg_am_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_am
    ADD CONSTRAINT pg_am_pkey PRIMARY KEY (oid);


--
-- Name: pg_attribute pg_attribute_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_attribute
    ADD CONSTRAINT pg_attribute_pkey PRIMARY KEY (attrelid, attnum);


--
-- Name: pg_authid pg_authid_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_authid
    ADD CONSTRAINT pg_authid_pkey PRIMARY KEY (oid);


--
-- Name: pg_cast pg_cast_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_cast
    ADD CONSTRAINT pg_cast_pkey PRIMARY KEY (oid);


--
-- Name: pg_class pg_class_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_class
    ADD CONSTRAINT pg_class_pkey PRIMARY KEY (oid);


--
-- Name: pg_collation pg_collation_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_collation
    ADD CONSTRAINT pg_collation_pkey PRIMARY KEY (oid);


--
-- Name: pg_constraints pg_constraints_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_constraints
    ADD CONSTRAINT pg_constraints_pkey PRIMARY KEY (oid);


--
-- Name: pg_conversion pg_conversion_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_conversion
    ADD CONSTRAINT pg_conversion_pkey PRIMARY KEY (oid);


--
-- Name: pg_database pg_database_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_database
    ADD CONSTRAINT pg_database_pkey PRIMARY KEY (oid);


--
-- Name: pg_default_acl pg_default_acl_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_default_acl
    ADD CONSTRAINT pg_default_acl_pkey PRIMARY KEY (oid);


--
-- Name: pg_enum pg_enum_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_enum
    ADD CONSTRAINT pg_enum_pkey PRIMARY KEY (oid);


--
-- Name: pg_extension pg_extension_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_extension
    ADD CONSTRAINT pg_extension_pkey PRIMARY KEY (oid);


--
-- Name: pg_foreign_data_wrapper pg_foreign_data_wrapper_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_foreign_data_wrapper
    ADD CONSTRAINT pg_foreign_data_wrapper_pkey PRIMARY KEY (oid);


--
-- Name: pg_foreign_server pg_foreign_server_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_foreign_server
    ADD CONSTRAINT pg_foreign_server_pkey PRIMARY KEY (oid);


--
-- Name: pg_language pg_language_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_language
    ADD CONSTRAINT pg_language_pkey PRIMARY KEY (oid);


--
-- Name: pg_largeobject_metadata pg_largeobject_metadata_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_largeobject_metadata
    ADD CONSTRAINT pg_largeobject_metadata_pkey PRIMARY KEY (oid);


--
-- Name: pg_namespace pg_namespace_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_namespace
    ADD CONSTRAINT pg_namespace_pkey PRIMARY KEY (oid);


--
-- Name: pg_opclass pg_opclass_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_opclass
    ADD CONSTRAINT pg_opclass_pkey PRIMARY KEY (oid);


--
-- Name: pg_operator pg_operator_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_operator
    ADD CONSTRAINT pg_operator_pkey PRIMARY KEY (oid);


--
-- Name: pg_opfamily pg_opfamily_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_opfamily
    ADD CONSTRAINT pg_opfamily_pkey PRIMARY KEY (oid);


--
-- Name: pg_proc pg_proc_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_proc
    ADD CONSTRAINT pg_proc_pkey PRIMARY KEY (oid);


--
-- Name: pg_publication pg_publication_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_publication
    ADD CONSTRAINT pg_publication_pkey PRIMARY KEY (oid);


--
-- Name: pg_replication_origin pg_replication_origin_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_replication_origin
    ADD CONSTRAINT pg_replication_origin_pkey PRIMARY KEY (roident);


--
-- Name: pg_rewrite pg_rewrite_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_rewrite
    ADD CONSTRAINT pg_rewrite_pkey PRIMARY KEY (oid);


--
-- Name: pg_subscription pg_subscription_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_subscription
    ADD CONSTRAINT pg_subscription_pkey PRIMARY KEY (oid);


--
-- Name: pg_tablespace pg_tablespace_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_tablespace
    ADD CONSTRAINT pg_tablespace_pkey PRIMARY KEY (oid);


--
-- Name: pg_trigger pg_trigger_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_trigger
    ADD CONSTRAINT pg_trigger_pkey PRIMARY KEY (oid);


--
-- Name: pg_ts_config pg_ts_config_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_config
    ADD CONSTRAINT pg_ts_config_pkey PRIMARY KEY (oid);


--
-- Name: pg_ts_dict pg_ts_dict_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_dict
    ADD CONSTRAINT pg_ts_dict_pkey PRIMARY KEY (oid);


--
-- Name: pg_ts_parser pg_ts_parser_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_parser
    ADD CONSTRAINT pg_ts_parser_pkey PRIMARY KEY (oid);


--
-- Name: pg_ts_template pg_ts_template_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_template
    ADD CONSTRAINT pg_ts_template_pkey PRIMARY KEY (oid);


--
-- Name: pg_type pg_type_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_pkey PRIMARY KEY (oid);


--
-- Name: pg_user_mapping pg_user_mapping_pkey; Type: CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_user_mapping
    ADD CONSTRAINT pg_user_mapping_pkey PRIMARY KEY (oid);


--
-- Name: pg_aggregate pg_aggregate_aggcombinefn_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_aggregate
    ADD CONSTRAINT pg_aggregate_aggcombinefn_fkey FOREIGN KEY (aggcombinefn) REFERENCES pg_proc(oid);


--
-- Name: pg_aggregate pg_aggregate_aggdeserialfn_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_aggregate
    ADD CONSTRAINT pg_aggregate_aggdeserialfn_fkey FOREIGN KEY (aggdeserialfn) REFERENCES pg_proc(oid);


--
-- Name: pg_aggregate pg_aggregate_aggfinalfn_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_aggregate
    ADD CONSTRAINT pg_aggregate_aggfinalfn_fkey FOREIGN KEY (aggfinalfn) REFERENCES pg_proc(oid);


--
-- Name: pg_aggregate pg_aggregate_aggfnoid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_aggregate
    ADD CONSTRAINT pg_aggregate_aggfnoid_fkey FOREIGN KEY (aggfnoid) REFERENCES pg_proc(oid);


--
-- Name: pg_aggregate pg_aggregate_aggmfinalfn_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_aggregate
    ADD CONSTRAINT pg_aggregate_aggmfinalfn_fkey FOREIGN KEY (aggmfinalfn) REFERENCES pg_proc(oid);


--
-- Name: pg_aggregate pg_aggregate_aggminvtransfn_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_aggregate
    ADD CONSTRAINT pg_aggregate_aggminvtransfn_fkey FOREIGN KEY (aggminvtransfn) REFERENCES pg_proc(oid);


--
-- Name: pg_aggregate pg_aggregate_aggmtransfn_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_aggregate
    ADD CONSTRAINT pg_aggregate_aggmtransfn_fkey FOREIGN KEY (aggmtransfn) REFERENCES pg_proc(oid);


--
-- Name: pg_aggregate pg_aggregate_aggmtranstype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_aggregate
    ADD CONSTRAINT pg_aggregate_aggmtranstype_fkey FOREIGN KEY (aggmtranstype) REFERENCES pg_type(oid);


--
-- Name: pg_aggregate pg_aggregate_aggserialfn_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_aggregate
    ADD CONSTRAINT pg_aggregate_aggserialfn_fkey FOREIGN KEY (aggserialfn) REFERENCES pg_proc(oid);


--
-- Name: pg_aggregate pg_aggregate_aggsortop_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_aggregate
    ADD CONSTRAINT pg_aggregate_aggsortop_fkey FOREIGN KEY (aggsortop) REFERENCES pg_operator(oid);


--
-- Name: pg_aggregate pg_aggregate_aggtransfn_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_aggregate
    ADD CONSTRAINT pg_aggregate_aggtransfn_fkey FOREIGN KEY (aggtransfn) REFERENCES pg_proc(oid);


--
-- Name: pg_aggregate pg_aggregate_aggtranstype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_aggregate
    ADD CONSTRAINT pg_aggregate_aggtranstype_fkey FOREIGN KEY (aggtranstype) REFERENCES pg_type(oid);


--
-- Name: pg_am pg_am_amhandler_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_am
    ADD CONSTRAINT pg_am_amhandler_fkey FOREIGN KEY (amhandler) REFERENCES pg_proc(oid);


--
-- Name: pg_amop pg_amop_amopfamily_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_amop
    ADD CONSTRAINT pg_amop_amopfamily_fkey FOREIGN KEY (amopfamily) REFERENCES pg_opfamily(oid);


--
-- Name: pg_amop pg_amop_amoplefttype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_amop
    ADD CONSTRAINT pg_amop_amoplefttype_fkey FOREIGN KEY (amoplefttype) REFERENCES pg_type(oid);


--
-- Name: pg_amop pg_amop_amoprighttype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_amop
    ADD CONSTRAINT pg_amop_amoprighttype_fkey FOREIGN KEY (amoprighttype) REFERENCES pg_type(oid);


--
-- Name: pg_amproc pg_amproc_amproc_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_amproc
    ADD CONSTRAINT pg_amproc_amproc_fkey FOREIGN KEY (amproc) REFERENCES pg_proc(oid);


--
-- Name: pg_amproc pg_amproc_amprocfamily_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_amproc
    ADD CONSTRAINT pg_amproc_amprocfamily_fkey FOREIGN KEY (amprocfamily) REFERENCES pg_opfamily(oid);


--
-- Name: pg_amproc pg_amproc_amproclefttype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_amproc
    ADD CONSTRAINT pg_amproc_amproclefttype_fkey FOREIGN KEY (amproclefttype) REFERENCES pg_type(oid);


--
-- Name: pg_amproc pg_amproc_amprocrighttype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_amproc
    ADD CONSTRAINT pg_amproc_amprocrighttype_fkey FOREIGN KEY (amprocrighttype) REFERENCES pg_type(oid);


--
-- Name: pg_attrdef pg_attrdef_adrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_attrdef
    ADD CONSTRAINT pg_attrdef_adrelid_fkey FOREIGN KEY (adrelid, adnum) REFERENCES pg_attribute(attrelid, attnum);


--
-- Name: pg_attribute pg_attribute_attcollation_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_attribute
    ADD CONSTRAINT pg_attribute_attcollation_fkey FOREIGN KEY (attcollation) REFERENCES pg_collation(oid);


--
-- Name: pg_attribute pg_attribute_attrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_attribute
    ADD CONSTRAINT pg_attribute_attrelid_fkey FOREIGN KEY (attrelid) REFERENCES pg_class(oid);


--
-- Name: pg_attribute pg_attribute_atttypid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_attribute
    ADD CONSTRAINT pg_attribute_atttypid_fkey FOREIGN KEY (atttypid) REFERENCES pg_type(oid);


--
-- Name: pg_auth_members pg_auth_members_grantor_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_auth_members
    ADD CONSTRAINT pg_auth_members_grantor_fkey FOREIGN KEY (grantor) REFERENCES pg_authid(oid);


--
-- Name: pg_auth_members pg_auth_members_member_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_auth_members
    ADD CONSTRAINT pg_auth_members_member_fkey FOREIGN KEY (member) REFERENCES pg_authid(oid);


--
-- Name: pg_auth_members pg_auth_members_roleid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_auth_members
    ADD CONSTRAINT pg_auth_members_roleid_fkey FOREIGN KEY (roleid) REFERENCES pg_authid(oid);


--
-- Name: pg_cast pg_cast_castfunc_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_cast
    ADD CONSTRAINT pg_cast_castfunc_fkey FOREIGN KEY (castfunc) REFERENCES pg_proc(oid);


--
-- Name: pg_cast pg_cast_castsource_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_cast
    ADD CONSTRAINT pg_cast_castsource_fkey FOREIGN KEY (castsource) REFERENCES pg_type(oid);


--
-- Name: pg_cast pg_cast_casttarget_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_cast
    ADD CONSTRAINT pg_cast_casttarget_fkey FOREIGN KEY (casttarget) REFERENCES pg_type(oid);


--
-- Name: pg_class pg_class_relam_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_class
    ADD CONSTRAINT pg_class_relam_fkey FOREIGN KEY (relam) REFERENCES pg_am(oid);


--
-- Name: pg_class pg_class_relnamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_class
    ADD CONSTRAINT pg_class_relnamespace_fkey FOREIGN KEY (relnamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_class pg_class_reloftype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_class
    ADD CONSTRAINT pg_class_reloftype_fkey FOREIGN KEY (reloftype) REFERENCES pg_type(oid);


--
-- Name: pg_class pg_class_relowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_class
    ADD CONSTRAINT pg_class_relowner_fkey FOREIGN KEY (relowner) REFERENCES pg_authid(oid);


--
-- Name: pg_class pg_class_reltablespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_class
    ADD CONSTRAINT pg_class_reltablespace_fkey FOREIGN KEY (reltablespace) REFERENCES pg_tablespace(oid);


--
-- Name: pg_class pg_class_reltoastrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_class
    ADD CONSTRAINT pg_class_reltoastrelid_fkey FOREIGN KEY (reltoastrelid) REFERENCES pg_class(oid);


--
-- Name: pg_class pg_class_reltype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_class
    ADD CONSTRAINT pg_class_reltype_fkey FOREIGN KEY (reltype) REFERENCES pg_type(oid);


--
-- Name: pg_collation pg_collation_collnamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_collation
    ADD CONSTRAINT pg_collation_collnamespace_fkey FOREIGN KEY (collnamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_collation pg_collation_collowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_collation
    ADD CONSTRAINT pg_collation_collowner_fkey FOREIGN KEY (collowner) REFERENCES pg_authid(oid);


--
-- Name: pg_constraints pg_constraints_confrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_constraints
    ADD CONSTRAINT pg_constraints_confrelid_fkey FOREIGN KEY (confrelid) REFERENCES pg_class(oid);


--
-- Name: pg_constraints pg_constraints_conindid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_constraints
    ADD CONSTRAINT pg_constraints_conindid_fkey FOREIGN KEY (conindid) REFERENCES pg_class(oid);


--
-- Name: pg_constraints pg_constraints_connamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_constraints
    ADD CONSTRAINT pg_constraints_connamespace_fkey FOREIGN KEY (connamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_constraints pg_constraints_conrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_constraints
    ADD CONSTRAINT pg_constraints_conrelid_fkey FOREIGN KEY (conrelid) REFERENCES pg_class(oid);


--
-- Name: pg_constraints pg_constraints_contypid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_constraints
    ADD CONSTRAINT pg_constraints_contypid_fkey FOREIGN KEY (contypid) REFERENCES pg_type(oid);


--
-- Name: pg_conversion pg_conversion_connamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_conversion
    ADD CONSTRAINT pg_conversion_connamespace_fkey FOREIGN KEY (connamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_conversion pg_conversion_conowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_conversion
    ADD CONSTRAINT pg_conversion_conowner_fkey FOREIGN KEY (conowner) REFERENCES pg_authid(oid);


--
-- Name: pg_conversion pg_conversion_conproc_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_conversion
    ADD CONSTRAINT pg_conversion_conproc_fkey FOREIGN KEY (conproc) REFERENCES pg_proc(oid);


--
-- Name: pg_database pg_database_datdba_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_database
    ADD CONSTRAINT pg_database_datdba_fkey FOREIGN KEY (datdba) REFERENCES pg_authid(oid);


--
-- Name: pg_database pg_database_dattablespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_database
    ADD CONSTRAINT pg_database_dattablespace_fkey FOREIGN KEY (dattablespace) REFERENCES pg_tablespace(oid);


--
-- Name: pg_db_role_setting pg_db_role_setting_setdatabase_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_db_role_setting
    ADD CONSTRAINT pg_db_role_setting_setdatabase_fkey FOREIGN KEY (setdatabase) REFERENCES pg_database(oid);


--
-- Name: pg_db_role_setting pg_db_role_setting_setrole_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_db_role_setting
    ADD CONSTRAINT pg_db_role_setting_setrole_fkey FOREIGN KEY (setrole) REFERENCES pg_authid(oid);


--
-- Name: pg_default_acl pg_default_acl_defaclnamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_default_acl
    ADD CONSTRAINT pg_default_acl_defaclnamespace_fkey FOREIGN KEY (defaclnamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_default_acl pg_default_acl_defaclrole_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_default_acl
    ADD CONSTRAINT pg_default_acl_defaclrole_fkey FOREIGN KEY (defaclrole) REFERENCES pg_authid(oid);


--
-- Name: pg_depend pg_depend_classid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_depend
    ADD CONSTRAINT pg_depend_classid_fkey FOREIGN KEY (classid) REFERENCES pg_class(oid);


--
-- Name: pg_depend pg_depend_refclassid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_depend
    ADD CONSTRAINT pg_depend_refclassid_fkey FOREIGN KEY (refclassid) REFERENCES pg_class(oid);


--
-- Name: pg_description pg_description_classoid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_description
    ADD CONSTRAINT pg_description_classoid_fkey FOREIGN KEY (classoid) REFERENCES pg_class(oid);


--
-- Name: pg_enum pg_enum_enumtypid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_enum
    ADD CONSTRAINT pg_enum_enumtypid_fkey FOREIGN KEY (enumtypid) REFERENCES pg_type(oid);


--
-- Name: pg_event_trigger pg_event_trigger_evtfoid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_event_trigger
    ADD CONSTRAINT pg_event_trigger_evtfoid_fkey FOREIGN KEY (evtfoid) REFERENCES pg_proc(oid);


--
-- Name: pg_event_trigger pg_event_trigger_evtowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_event_trigger
    ADD CONSTRAINT pg_event_trigger_evtowner_fkey FOREIGN KEY (evtowner) REFERENCES pg_authid(oid);


--
-- Name: pg_extension pg_extension_extnamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_extension
    ADD CONSTRAINT pg_extension_extnamespace_fkey FOREIGN KEY (extnamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_extension pg_extension_extowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_extension
    ADD CONSTRAINT pg_extension_extowner_fkey FOREIGN KEY (extowner) REFERENCES pg_authid(oid);


--
-- Name: pg_foreign_data_wrapper pg_foreign_data_wrapper_fdwhandler_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_foreign_data_wrapper
    ADD CONSTRAINT pg_foreign_data_wrapper_fdwhandler_fkey FOREIGN KEY (fdwhandler) REFERENCES pg_proc(oid);


--
-- Name: pg_foreign_data_wrapper pg_foreign_data_wrapper_fdwowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_foreign_data_wrapper
    ADD CONSTRAINT pg_foreign_data_wrapper_fdwowner_fkey FOREIGN KEY (fdwowner) REFERENCES pg_authid(oid);


--
-- Name: pg_foreign_data_wrapper pg_foreign_data_wrapper_fdwvalidator_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_foreign_data_wrapper
    ADD CONSTRAINT pg_foreign_data_wrapper_fdwvalidator_fkey FOREIGN KEY (fdwvalidator) REFERENCES pg_proc(oid);


--
-- Name: pg_foreign_server pg_foreign_server_srvfdw_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_foreign_server
    ADD CONSTRAINT pg_foreign_server_srvfdw_fkey FOREIGN KEY (srvfdw) REFERENCES pg_foreign_data_wrapper(oid);


--
-- Name: pg_foreign_server pg_foreign_server_srvowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_foreign_server
    ADD CONSTRAINT pg_foreign_server_srvowner_fkey FOREIGN KEY (srvowner) REFERENCES pg_authid(oid);


--
-- Name: pg_foreign_table pg_foreign_table_ftrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_foreign_table
    ADD CONSTRAINT pg_foreign_table_ftrelid_fkey FOREIGN KEY (ftrelid) REFERENCES pg_class(oid);


--
-- Name: pg_foreign_table pg_foreign_table_ftserver_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_foreign_table
    ADD CONSTRAINT pg_foreign_table_ftserver_fkey FOREIGN KEY (ftserver) REFERENCES pg_foreign_server(oid);


--
-- Name: pg_index pg_index_indexrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_index
    ADD CONSTRAINT pg_index_indexrelid_fkey FOREIGN KEY (indexrelid) REFERENCES pg_class(oid);


--
-- Name: pg_index pg_index_indrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_index
    ADD CONSTRAINT pg_index_indrelid_fkey FOREIGN KEY (indrelid) REFERENCES pg_class(oid);


--
-- Name: pg_inherits pg_inherits_inhparent_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_inherits
    ADD CONSTRAINT pg_inherits_inhparent_fkey FOREIGN KEY (inhparent) REFERENCES pg_class(oid);


--
-- Name: pg_inherits pg_inherits_inhrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_inherits
    ADD CONSTRAINT pg_inherits_inhrelid_fkey FOREIGN KEY (inhrelid) REFERENCES pg_class(oid);


--
-- Name: pg_init_privs pg_init_privs_classoid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_init_privs
    ADD CONSTRAINT pg_init_privs_classoid_fkey FOREIGN KEY (classoid) REFERENCES pg_class(oid);


--
-- Name: pg_language pg_language_laninline_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_language
    ADD CONSTRAINT pg_language_laninline_fkey FOREIGN KEY (laninline) REFERENCES pg_proc(oid);


--
-- Name: pg_language pg_language_lanowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_language
    ADD CONSTRAINT pg_language_lanowner_fkey FOREIGN KEY (lanowner) REFERENCES pg_authid(oid);


--
-- Name: pg_language pg_language_lanplcallfoid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_language
    ADD CONSTRAINT pg_language_lanplcallfoid_fkey FOREIGN KEY (lanplcallfoid) REFERENCES pg_proc(oid);


--
-- Name: pg_language pg_language_lanvalidator_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_language
    ADD CONSTRAINT pg_language_lanvalidator_fkey FOREIGN KEY (lanvalidator) REFERENCES pg_proc(oid);


--
-- Name: pg_largeobject pg_largeobject_loid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_largeobject
    ADD CONSTRAINT pg_largeobject_loid_fkey FOREIGN KEY (loid) REFERENCES pg_largeobject_metadata(oid);


--
-- Name: pg_largeobject_metadata pg_largeobject_metadata_lomowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_largeobject_metadata
    ADD CONSTRAINT pg_largeobject_metadata_lomowner_fkey FOREIGN KEY (lomowner) REFERENCES pg_authid(oid);


--
-- Name: pg_namespace pg_namespace_nspowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_namespace
    ADD CONSTRAINT pg_namespace_nspowner_fkey FOREIGN KEY (nspowner) REFERENCES pg_authid(oid);


--
-- Name: pg_opclass pg_opclass_opcfamily_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_opclass
    ADD CONSTRAINT pg_opclass_opcfamily_fkey FOREIGN KEY (opcfamily) REFERENCES pg_opfamily(oid);


--
-- Name: pg_opclass pg_opclass_opcintype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_opclass
    ADD CONSTRAINT pg_opclass_opcintype_fkey FOREIGN KEY (opcintype) REFERENCES pg_type(oid);


--
-- Name: pg_opclass pg_opclass_opckeytype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_opclass
    ADD CONSTRAINT pg_opclass_opckeytype_fkey FOREIGN KEY (opckeytype) REFERENCES pg_type(oid);


--
-- Name: pg_opclass pg_opclass_opcmethod_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_opclass
    ADD CONSTRAINT pg_opclass_opcmethod_fkey FOREIGN KEY (opcmethod) REFERENCES pg_am(oid);


--
-- Name: pg_opclass pg_opclass_opcnamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_opclass
    ADD CONSTRAINT pg_opclass_opcnamespace_fkey FOREIGN KEY (opcnamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_opclass pg_opclass_opcowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_opclass
    ADD CONSTRAINT pg_opclass_opcowner_fkey FOREIGN KEY (opcowner) REFERENCES pg_authid(oid);


--
-- Name: pg_operator pg_operator_oprcode_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_operator
    ADD CONSTRAINT pg_operator_oprcode_fkey FOREIGN KEY (oprcode) REFERENCES pg_proc(oid);


--
-- Name: pg_operator pg_operator_oprcom_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_operator
    ADD CONSTRAINT pg_operator_oprcom_fkey FOREIGN KEY (oprcom) REFERENCES pg_operator(oid);


--
-- Name: pg_operator pg_operator_oprjoin_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_operator
    ADD CONSTRAINT pg_operator_oprjoin_fkey FOREIGN KEY (oprjoin) REFERENCES pg_proc(oid);


--
-- Name: pg_operator pg_operator_oprleft_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_operator
    ADD CONSTRAINT pg_operator_oprleft_fkey FOREIGN KEY (oprleft) REFERENCES pg_type(oid);


--
-- Name: pg_operator pg_operator_oprnamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_operator
    ADD CONSTRAINT pg_operator_oprnamespace_fkey FOREIGN KEY (oprnamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_operator pg_operator_oprnegate_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_operator
    ADD CONSTRAINT pg_operator_oprnegate_fkey FOREIGN KEY (oprnegate) REFERENCES pg_operator(oid);


--
-- Name: pg_operator pg_operator_oprowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_operator
    ADD CONSTRAINT pg_operator_oprowner_fkey FOREIGN KEY (oprowner) REFERENCES pg_authid(oid);


--
-- Name: pg_operator pg_operator_oprrest_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_operator
    ADD CONSTRAINT pg_operator_oprrest_fkey FOREIGN KEY (oprrest) REFERENCES pg_proc(oid);


--
-- Name: pg_operator pg_operator_oprresult_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_operator
    ADD CONSTRAINT pg_operator_oprresult_fkey FOREIGN KEY (oprresult) REFERENCES pg_type(oid);


--
-- Name: pg_operator pg_operator_oprright_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_operator
    ADD CONSTRAINT pg_operator_oprright_fkey FOREIGN KEY (oprright) REFERENCES pg_type(oid);


--
-- Name: pg_opfamily pg_opfamily_opfmethod_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_opfamily
    ADD CONSTRAINT pg_opfamily_opfmethod_fkey FOREIGN KEY (opfmethod) REFERENCES pg_am(oid);


--
-- Name: pg_opfamily pg_opfamily_opfnamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_opfamily
    ADD CONSTRAINT pg_opfamily_opfnamespace_fkey FOREIGN KEY (opfnamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_opfamily pg_opfamily_opfowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_opfamily
    ADD CONSTRAINT pg_opfamily_opfowner_fkey FOREIGN KEY (opfowner) REFERENCES pg_authid(oid);


--
-- Name: pg_partitioned_table pg_partitioned_table_partrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_partitioned_table
    ADD CONSTRAINT pg_partitioned_table_partrelid_fkey FOREIGN KEY (partrelid) REFERENCES pg_class(oid);


--
-- Name: pg_policy pg_policy_polrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_policy
    ADD CONSTRAINT pg_policy_polrelid_fkey FOREIGN KEY (polrelid) REFERENCES pg_class(oid);


--
-- Name: pg_proc pg_proc_prolang_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_proc
    ADD CONSTRAINT pg_proc_prolang_fkey FOREIGN KEY (prolang) REFERENCES pg_language(oid);


--
-- Name: pg_proc pg_proc_pronamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_proc
    ADD CONSTRAINT pg_proc_pronamespace_fkey FOREIGN KEY (pronamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_proc pg_proc_proowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_proc
    ADD CONSTRAINT pg_proc_proowner_fkey FOREIGN KEY (proowner) REFERENCES pg_authid(oid);


--
-- Name: pg_proc pg_proc_prorettype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_proc
    ADD CONSTRAINT pg_proc_prorettype_fkey FOREIGN KEY (prorettype) REFERENCES pg_type(oid);


--
-- Name: pg_proc pg_proc_protransform_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_proc
    ADD CONSTRAINT pg_proc_protransform_fkey FOREIGN KEY (protransform) REFERENCES pg_type(oid);


--
-- Name: pg_proc pg_proc_provariadic_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_proc
    ADD CONSTRAINT pg_proc_provariadic_fkey FOREIGN KEY (provariadic) REFERENCES pg_type(oid);


--
-- Name: pg_publication pg_publication_pubowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_publication
    ADD CONSTRAINT pg_publication_pubowner_fkey FOREIGN KEY (pubowner) REFERENCES pg_authid(oid);


--
-- Name: pg_publication_rel pg_publication_rel_prpubid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_publication_rel
    ADD CONSTRAINT pg_publication_rel_prpubid_fkey FOREIGN KEY (prpubid) REFERENCES pg_publication(oid);


--
-- Name: pg_publication_rel pg_publication_rel_prrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_publication_rel
    ADD CONSTRAINT pg_publication_rel_prrelid_fkey FOREIGN KEY (prrelid) REFERENCES pg_class(oid);


--
-- Name: pg_range pg_range_rngcanonical_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_range
    ADD CONSTRAINT pg_range_rngcanonical_fkey FOREIGN KEY (rngcanonical) REFERENCES pg_proc(oid);


--
-- Name: pg_range pg_range_rngcollation_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_range
    ADD CONSTRAINT pg_range_rngcollation_fkey FOREIGN KEY (rngcollation) REFERENCES pg_collation(oid);


--
-- Name: pg_range pg_range_rngsubdiff_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_range
    ADD CONSTRAINT pg_range_rngsubdiff_fkey FOREIGN KEY (rngsubdiff) REFERENCES pg_proc(oid);


--
-- Name: pg_range pg_range_rngsubopc_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_range
    ADD CONSTRAINT pg_range_rngsubopc_fkey FOREIGN KEY (rngsubopc) REFERENCES pg_opclass(oid);


--
-- Name: pg_range pg_range_rngsubtype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_range
    ADD CONSTRAINT pg_range_rngsubtype_fkey FOREIGN KEY (rngsubtype) REFERENCES pg_type(oid);


--
-- Name: pg_range pg_range_rngtypid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_range
    ADD CONSTRAINT pg_range_rngtypid_fkey FOREIGN KEY (rngtypid) REFERENCES pg_type(oid);


--
-- Name: pg_rewrite pg_rewrite_ev_class_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_rewrite
    ADD CONSTRAINT pg_rewrite_ev_class_fkey FOREIGN KEY (ev_class) REFERENCES pg_class(oid);


--
-- Name: pg_seclabel pg_seclabel_classoid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_seclabel
    ADD CONSTRAINT pg_seclabel_classoid_fkey FOREIGN KEY (classoid) REFERENCES pg_class(oid);


--
-- Name: pg_sequence pg_sequence_seqrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_sequence
    ADD CONSTRAINT pg_sequence_seqrelid_fkey FOREIGN KEY (seqrelid) REFERENCES pg_class(oid);


--
-- Name: pg_sequence pg_sequence_seqtypid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_sequence
    ADD CONSTRAINT pg_sequence_seqtypid_fkey FOREIGN KEY (seqtypid) REFERENCES pg_type(oid);


--
-- Name: pg_shdepend pg_shdepend_classid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_shdepend
    ADD CONSTRAINT pg_shdepend_classid_fkey FOREIGN KEY (classid) REFERENCES pg_class(oid);


--
-- Name: pg_shdepend pg_shdepend_dbid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_shdepend
    ADD CONSTRAINT pg_shdepend_dbid_fkey FOREIGN KEY (dbid) REFERENCES pg_database(oid);


--
-- Name: pg_shdepend pg_shdepend_refclassid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_shdepend
    ADD CONSTRAINT pg_shdepend_refclassid_fkey FOREIGN KEY (refclassid) REFERENCES pg_class(oid);


--
-- Name: pg_shdescription pg_shdescription_classoid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_shdescription
    ADD CONSTRAINT pg_shdescription_classoid_fkey FOREIGN KEY (classoid) REFERENCES pg_class(oid);


--
-- Name: pg_shseclabel pg_shseclabel_classoid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_shseclabel
    ADD CONSTRAINT pg_shseclabel_classoid_fkey FOREIGN KEY (classoid) REFERENCES pg_class(oid);


--
-- Name: pg_statistic_ext pg_statistic_ext_stxnamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_statistic_ext
    ADD CONSTRAINT pg_statistic_ext_stxnamespace_fkey FOREIGN KEY (stxnamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_statistic_ext pg_statistic_ext_stxowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_statistic_ext
    ADD CONSTRAINT pg_statistic_ext_stxowner_fkey FOREIGN KEY (stxowner) REFERENCES pg_authid(oid);


--
-- Name: pg_statistic_ext pg_statistic_ext_stxrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_statistic_ext
    ADD CONSTRAINT pg_statistic_ext_stxrelid_fkey FOREIGN KEY (stxrelid) REFERENCES pg_class(oid);


--
-- Name: pg_statistic pg_statistic_staop1_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_statistic
    ADD CONSTRAINT pg_statistic_staop1_fkey FOREIGN KEY (staop1) REFERENCES pg_operator(oid);


--
-- Name: pg_statistic pg_statistic_staop2_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_statistic
    ADD CONSTRAINT pg_statistic_staop2_fkey FOREIGN KEY (staop2) REFERENCES pg_operator(oid);


--
-- Name: pg_statistic pg_statistic_staop3_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_statistic
    ADD CONSTRAINT pg_statistic_staop3_fkey FOREIGN KEY (staop3) REFERENCES pg_operator(oid);


--
-- Name: pg_statistic pg_statistic_staop4_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_statistic
    ADD CONSTRAINT pg_statistic_staop4_fkey FOREIGN KEY (staop4) REFERENCES pg_operator(oid);


--
-- Name: pg_statistic pg_statistic_staop5_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_statistic
    ADD CONSTRAINT pg_statistic_staop5_fkey FOREIGN KEY (staop5) REFERENCES pg_operator(oid);


--
-- Name: pg_statistic pg_statistic_starelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_statistic
    ADD CONSTRAINT pg_statistic_starelid_fkey FOREIGN KEY (starelid, staattnum) REFERENCES pg_attribute(attrelid, attnum);


--
-- Name: pg_subscription_rel pg_subscription_rel_srrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_subscription_rel
    ADD CONSTRAINT pg_subscription_rel_srrelid_fkey FOREIGN KEY (srrelid) REFERENCES pg_class(oid);


--
-- Name: pg_subscription_rel pg_subscription_rel_srsubid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_subscription_rel
    ADD CONSTRAINT pg_subscription_rel_srsubid_fkey FOREIGN KEY (srsubid) REFERENCES pg_subscription(oid);


--
-- Name: pg_subscription pg_subscription_subdbid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_subscription
    ADD CONSTRAINT pg_subscription_subdbid_fkey FOREIGN KEY (subdbid) REFERENCES pg_database(oid);


--
-- Name: pg_subscription pg_subscription_subowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_subscription
    ADD CONSTRAINT pg_subscription_subowner_fkey FOREIGN KEY (subowner) REFERENCES pg_authid(oid);


--
-- Name: pg_tablespace pg_tablespace_spcowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_tablespace
    ADD CONSTRAINT pg_tablespace_spcowner_fkey FOREIGN KEY (spcowner) REFERENCES pg_authid(oid);


--
-- Name: pg_transform pg_transform_trffromsql_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_transform
    ADD CONSTRAINT pg_transform_trffromsql_fkey FOREIGN KEY (trffromsql) REFERENCES pg_proc(oid);


--
-- Name: pg_transform pg_transform_trflang_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_transform
    ADD CONSTRAINT pg_transform_trflang_fkey FOREIGN KEY (trflang) REFERENCES pg_language(oid);


--
-- Name: pg_transform pg_transform_trftosql_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_transform
    ADD CONSTRAINT pg_transform_trftosql_fkey FOREIGN KEY (trftosql) REFERENCES pg_proc(oid);


--
-- Name: pg_transform pg_transform_trftype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_transform
    ADD CONSTRAINT pg_transform_trftype_fkey FOREIGN KEY (trftype) REFERENCES pg_type(oid);


--
-- Name: pg_trigger pg_trigger_tgconstraint_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_trigger
    ADD CONSTRAINT pg_trigger_tgconstraint_fkey FOREIGN KEY (tgconstraint) REFERENCES pg_constraints(oid);


--
-- Name: pg_trigger pg_trigger_tgconstrindid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_trigger
    ADD CONSTRAINT pg_trigger_tgconstrindid_fkey FOREIGN KEY (tgconstrindid) REFERENCES pg_class(oid);


--
-- Name: pg_trigger pg_trigger_tgconstrrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_trigger
    ADD CONSTRAINT pg_trigger_tgconstrrelid_fkey FOREIGN KEY (tgconstrrelid) REFERENCES pg_class(oid);


--
-- Name: pg_trigger pg_trigger_tgfoid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_trigger
    ADD CONSTRAINT pg_trigger_tgfoid_fkey FOREIGN KEY (tgfoid) REFERENCES pg_proc(oid);


--
-- Name: pg_trigger pg_trigger_tgrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_trigger
    ADD CONSTRAINT pg_trigger_tgrelid_fkey FOREIGN KEY (tgrelid) REFERENCES pg_class(oid);


--
-- Name: pg_ts_config pg_ts_config_cfgnamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_config
    ADD CONSTRAINT pg_ts_config_cfgnamespace_fkey FOREIGN KEY (cfgnamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_ts_config pg_ts_config_cfgowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_config
    ADD CONSTRAINT pg_ts_config_cfgowner_fkey FOREIGN KEY (cfgowner) REFERENCES pg_authid(oid);


--
-- Name: pg_ts_config pg_ts_config_cfgparser_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_config
    ADD CONSTRAINT pg_ts_config_cfgparser_fkey FOREIGN KEY (cfgparser) REFERENCES pg_ts_parser(oid);


--
-- Name: pg_ts_config_map pg_ts_config_map_mapcfg_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_config_map
    ADD CONSTRAINT pg_ts_config_map_mapcfg_fkey FOREIGN KEY (mapcfg) REFERENCES pg_ts_config(oid);


--
-- Name: pg_ts_config_map pg_ts_config_map_mapdict_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_config_map
    ADD CONSTRAINT pg_ts_config_map_mapdict_fkey FOREIGN KEY (mapdict) REFERENCES pg_ts_dict(oid);


--
-- Name: pg_ts_dict pg_ts_dict_dictnamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_dict
    ADD CONSTRAINT pg_ts_dict_dictnamespace_fkey FOREIGN KEY (dictnamespace) REFERENCES pg_ts_config(oid);


--
-- Name: pg_ts_dict pg_ts_dict_dictowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_dict
    ADD CONSTRAINT pg_ts_dict_dictowner_fkey FOREIGN KEY (dictowner) REFERENCES pg_authid(oid);


--
-- Name: pg_ts_dict pg_ts_dict_dicttemplate_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_dict
    ADD CONSTRAINT pg_ts_dict_dicttemplate_fkey FOREIGN KEY (dicttemplate) REFERENCES pg_ts_template(oid);


--
-- Name: pg_ts_parser pg_ts_parser_prsend_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_parser
    ADD CONSTRAINT pg_ts_parser_prsend_fkey FOREIGN KEY (prsend) REFERENCES pg_proc(oid);


--
-- Name: pg_ts_parser pg_ts_parser_prsheadline_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_parser
    ADD CONSTRAINT pg_ts_parser_prsheadline_fkey FOREIGN KEY (prsheadline) REFERENCES pg_proc(oid);


--
-- Name: pg_ts_parser pg_ts_parser_prslextype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_parser
    ADD CONSTRAINT pg_ts_parser_prslextype_fkey FOREIGN KEY (prslextype) REFERENCES pg_proc(oid);


--
-- Name: pg_ts_parser pg_ts_parser_prsnamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_parser
    ADD CONSTRAINT pg_ts_parser_prsnamespace_fkey FOREIGN KEY (prsnamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_ts_parser pg_ts_parser_prsstart_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_parser
    ADD CONSTRAINT pg_ts_parser_prsstart_fkey FOREIGN KEY (prsstart) REFERENCES pg_proc(oid);


--
-- Name: pg_ts_parser pg_ts_parser_prstoken_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_parser
    ADD CONSTRAINT pg_ts_parser_prstoken_fkey FOREIGN KEY (prstoken) REFERENCES pg_proc(oid);


--
-- Name: pg_ts_template pg_ts_template_tmplinit_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_template
    ADD CONSTRAINT pg_ts_template_tmplinit_fkey FOREIGN KEY (tmplinit) REFERENCES pg_proc(oid);


--
-- Name: pg_ts_template pg_ts_template_tmpllexize_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_template
    ADD CONSTRAINT pg_ts_template_tmpllexize_fkey FOREIGN KEY (tmpllexize) REFERENCES pg_proc(oid);


--
-- Name: pg_ts_template pg_ts_template_tmplnamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_ts_template
    ADD CONSTRAINT pg_ts_template_tmplnamespace_fkey FOREIGN KEY (tmplnamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_type pg_type_typanalyze_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_typanalyze_fkey FOREIGN KEY (typanalyze) REFERENCES pg_proc(oid);


--
-- Name: pg_type pg_type_typarray_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_typarray_fkey FOREIGN KEY (typarray) REFERENCES pg_type(oid);


--
-- Name: pg_type pg_type_typbasetype_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_typbasetype_fkey FOREIGN KEY (typbasetype) REFERENCES pg_type(oid);


--
-- Name: pg_type pg_type_typcollation_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_typcollation_fkey FOREIGN KEY (typcollation) REFERENCES pg_collation(oid);


--
-- Name: pg_type pg_type_typelem_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_typelem_fkey FOREIGN KEY (typelem) REFERENCES pg_type(oid);


--
-- Name: pg_type pg_type_typinput_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_typinput_fkey FOREIGN KEY (typinput) REFERENCES pg_proc(oid);


--
-- Name: pg_type pg_type_typmodin_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_typmodin_fkey FOREIGN KEY (typmodin) REFERENCES pg_proc(oid);


--
-- Name: pg_type pg_type_typmodout_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_typmodout_fkey FOREIGN KEY (typmodout) REFERENCES pg_proc(oid);


--
-- Name: pg_type pg_type_typnamespace_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_typnamespace_fkey FOREIGN KEY (typnamespace) REFERENCES pg_namespace(oid);


--
-- Name: pg_type pg_type_typoutput_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_typoutput_fkey FOREIGN KEY (typoutput) REFERENCES pg_proc(oid);


--
-- Name: pg_type pg_type_typowner_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_typowner_fkey FOREIGN KEY (typowner) REFERENCES pg_authid(oid);


--
-- Name: pg_type pg_type_typreceive_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_typreceive_fkey FOREIGN KEY (typreceive) REFERENCES pg_proc(oid);


--
-- Name: pg_type pg_type_typrelid_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_typrelid_fkey FOREIGN KEY (typrelid) REFERENCES pg_class(oid);


--
-- Name: pg_type pg_type_typsend_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_type
    ADD CONSTRAINT pg_type_typsend_fkey FOREIGN KEY (typsend) REFERENCES pg_proc(oid);


--
-- Name: pg_user_mapping pg_user_mapping_umserver_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_user_mapping
    ADD CONSTRAINT pg_user_mapping_umserver_fkey FOREIGN KEY (umserver) REFERENCES pg_foreign_server(oid);


--
-- Name: pg_user_mapping pg_user_mapping_umuser_fkey; Type: FK CONSTRAINT; Schema: constrained_pg_catalog; Owner: -
--

ALTER TABLE ONLY pg_user_mapping
    ADD CONSTRAINT pg_user_mapping_umuser_fkey FOREIGN KEY (umuser) REFERENCES pg_authid(oid);


--
-- PostgreSQL database dump complete
--

