insert into roles (id, name)
    values(1, 'USER'), (2, 'ADMIN');
insert into users (id, username, password, active)
    values(1, 'admin', '$2a$12$iD9TPLXLSShVRbLdIkZrveltCCwffLWVZ/PX2uWrMFi4YPvDviHzW', true);
insert into users_roles (user_id, role_id)
    values(1, 1), (1, 2);