create table outbox
(
    id      int auto_increment,
    payload json null,
    constraint outbox_pk primary key (id)
);
