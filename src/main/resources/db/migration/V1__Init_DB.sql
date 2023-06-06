create table message (
    id bigint not null,
    filename varchar(255),
    tag varchar(255),
    text varchar(2048) not null,
    user_id bigint,
    primary key (id)
);

create table message_seq (
    next_val bigint
);
insert into message_seq values ( 1 );

create table roles (
    id bigint not null auto_increment,
    name varchar(255),
    primary key (id)
);

create table users (
    id bigint not null,
    activation_code varchar(255),
    active bit not null,
    email varchar(255),
    password varchar(255) not null,
    username varchar(255) not null,
    primary key (id)
);

create table users_roles (
    user_id bigint not null,
    role_id bigint not null
);

create table users_seq (
    next_val bigint
);
insert into users_seq values ( 1 );

alter table message
    add constraint message_users_fk foreign key (user_id) references users (id);
alter table users_roles
    add constraint users_roles_roles_fk foreign key (role_id) references roles (id);
alter table users_roles
    add constraint users_roles_users_fk foreign key (user_id) references users (id);