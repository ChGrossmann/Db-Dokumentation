/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  ch.grossmann
 * Created: 26.05.2018
 */

CREATE TABLE adresse (
id serial primary key,
strasse varchar(100),
strassennummer numeric,
ort varchar(100),
plz numeric);

CREATE TABLE lieferfirma (
id serial primary key,
firmenname varchar(100),
id_adresse numeric,
telefonnummer numeric,
);

CREATE TABLE kunde (
id serial primary key,
kundennummer varchar(100),
firmenname varchar(100),
vorname varchar(100),
nachname varchar(100),
id_lieferadresse numeric,
id_rechnungsadresse numeric,
telefonnummer numeric
);

CREATE TABLE artikel (
id serial primary key,
artikelnummer numeric,
bezeichnung varchar(100),
farbe varchar(100),
groesse varchar(100),
preis numeric
);

CREATE TABLE mehrwertsteuer (
id serial primary key,
mwst numeric
);

CREATE TABLE rechnung (
id serial primary key,
rechnungsnummer numeric,
id_lieferfirma numeric,
id_kunde numeric,
id_mwst numeric,
subtotal numeric,
mwstbetrag numeric,
preistotalinklmwst numeric,
bemerkung varchar(100)
);

CREATE TABLE rechnungsposition (
id serial primary key,
id_rechnung numeric,
id_artikel numeric,
menge numeric,
preistotal numeric,
);
