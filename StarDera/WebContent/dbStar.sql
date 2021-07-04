DROP database if exists dbStar;
create database dbStar;
use dbStar;

create table utente(
	
	email varchar(50) not null,
    passwordUtente varchar(20) not null,
    nome varchar(20) not null,
    cognome varchar(20) not null,
    username varchar(30) primary key not null
);

create table punto(
	id int primary key auto_increment,
    nome varchar(25) not null,
    città varchar(25) not null,
    indirizzo varchar(60) not null,
    descrizione varchar(500) not null,
    telescopi varchar(4) not null,
    wifi varchar(4) not null,
    visibilità varchar(20) not null
);

create table osservazione(
	id int primary key auto_increment,
    dataOsservazione  date not null,
    orarioOsservazione time not null,
    città varchar(25) not null,
    indirizzo varchar(60) not null,
    località varchar(20) not null,
    fontiLuminose varchar(20) not null,
    magnitudineLimite float not null,
    brillanzaTotale float not null,
    livello varchar(15) not null,
    utente varchar(30) not null,
    foreign key(utente) references utente(username)
);

