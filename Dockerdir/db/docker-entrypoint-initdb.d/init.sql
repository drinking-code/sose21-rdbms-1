create table user
(
    pk_user int unsigned auto_increment not null unique primary key,
    name    tinytext                    not null
);

create table mood
(
    score     tinyint      not null,
    timestamp datetime     not null,
    fk_user   int unsigned not null,
    constraint `fk_mood_user`
        foreign key (fk_user) references user (pk_user)
);
