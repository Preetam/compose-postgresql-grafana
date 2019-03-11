DROP TABLE IF EXISTS users;
CREATE TABLE users (
    name text,
    created timestamp with time zone
);


insert into users values ('alice', now() - interval '4 days');
insert into users values ('bob', now() - interval '4 days');
insert into users values ('charlie', now() - interval '3 days');
insert into users values ('david', now() - interval '3 days');
insert into users values ('eric', now() - interval '3 days');
insert into users values ('felix', now() - interval '2 days');
insert into users values ('george', now() - interval '1 days');
insert into users values ('harvey', now() - interval '1 days');
insert into users values ('ian', now() - interval '0 days');

DROP TABLE IF EXISTS pipeline_stages;
CREATE TABLE pipeline_stages (
    project text,
    stage integer,
    started timestamp with time zone,
    ended timestamp with time zone,
    failed bool
);
