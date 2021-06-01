# type timestamp
# select all uuids from the last 2 weeks from a database that stores encounters with other devices
select uuid from encounters where timestamp between date_sub(now(), interval 14 day) and now();

# type int
# select all movies that are not rated fsk 18
select * from movies where fsk < 18;

# type text
# delete all tasks that do not have either status: 'in review', 'in progress', or 'todo'
delete from tasks where status not in ('in review', 'in progress', 'todo');

# type text
# update a very old database to use up to date city names
update facilities set city = 'Istanbul' where city = 'Constantinople'
