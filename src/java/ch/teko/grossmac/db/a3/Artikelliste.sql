/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  ch.grossmann
 * Created: 26.05.2018
 */

CREATE DATABASE artikelliste;


CREATE TABLE artikelliste(
id serial primary key,
artikelnummer numeric,
bezeichnung varchar(100),
menge numeric,
einheit varchar(100),
preis numeric
);