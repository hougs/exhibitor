create table rushplays
select core.pid, core.type, rush.bc, rush.dir, rush.yds from core
join rush on core.pid = rush.pid
where core.type = "RUSH";

create table passplays
select core.pid, core.type, pass.psr, pass.trg, pass.loc, pass.yds from core
join pass on core.pid = pass.pid
where core.type = "PASS";

create table puntplays
select core.pid, core.type, punts.punter, punts.pry, punts.pgro, punts.pnet from core
join punts on core.pid = punts.pid
where core.type = "PUNT";

create table kickoffplays
select core.pid, core.type, kickoffs.kicker, kickoffs.kgro, kickoffs.knet, kickoffs.ktb, kickoffs.kr, kickoffs.kry from core
join kickoffs on core.pid = kickoffs.pidrushplays
where core.type = "KOFF";


