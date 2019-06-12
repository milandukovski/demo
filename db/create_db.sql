-- create database demo_db owner postgres;

-- drop table public.author_books;
-- drop table public.authors;
-- drop table public.books;

create table if not exists public.authors
(
    id         bigserial not null,
    first_name text,
    last_name  text,
    address    text,
    city       text,
    PRIMARY KEY (id)
);

create table if not exists public.books
(
    id              bigserial not null,
    title           text,
    number_of_pages integer,
    type            text,
    releasing_date  timestamp without time zone,
    description    text,
    PRIMARY KEY (id)
);

create table if not exists public.author_books
(
    id        bigserial not null,
    author_id bigint,
    book_id   bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (author_id) REFERENCES public.authors (id),
    FOREIGN KEY (book_id) REFERENCES public.books (id)
);
