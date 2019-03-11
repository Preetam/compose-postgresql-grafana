WITH vars AS (SELECT md5(random()::text) AS name, now()-(random()*interval '7 day') AS basetime)
INSERT INTO pipeline_stages (project, stage, started, ended, failed) VALUES
    ((select name from vars), 1, (select basetime - interval '6 min' from vars), (select basetime - interval '5 min' - (random()*interval '10 seconds') from vars), 'f'),
    ((select name from vars), 2, (select basetime - interval '5 min' from vars), (select basetime - interval '4 min' - (random()*interval '50 seconds') from vars), 'f'),
    ((select name from vars), 3, (select basetime - interval '4 min' from vars), (select basetime - interval '3 min' - (random()*interval '10 seconds') from vars), 'f'),
    ((select name from vars), 4, (select basetime - interval '3 min' from vars), (select basetime - interval '2 min' - (random()*interval '40 seconds') from vars), 'f');
