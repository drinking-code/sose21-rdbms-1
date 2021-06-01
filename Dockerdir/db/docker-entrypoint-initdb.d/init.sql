create table users
(
    id   int unsigned auto_increment not null unique primary key,
    name tinytext                    not null
);

create table moods
(
    score     decimal(1, 0) not null,
    timestamp datetime      not null,
    user_id   int unsigned  not null,
    constraint `fk_mood_user`
        foreign key (user_id) references users (id)
            on delete no action
            on update no action
);
