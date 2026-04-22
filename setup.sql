--------------------------------------------------------------
-- Girls' Day 2026 — Snowy's Daten-Detektive
-- Setup: Datenbank, Tabellen und Daten
--------------------------------------------------------------

USE ROLE SYSADMIN;

CREATE DATABASE IF NOT EXISTS GIRLSDAY;
USE DATABASE GIRLSDAY;
USE SCHEMA PUBLIC;

--------------------------------------------------------------
-- Verdächtige
--------------------------------------------------------------

CREATE OR REPLACE TABLE VERDAECHTIGE (
    NAME            VARCHAR,
    TIER            VARCHAR,
    LIEBLINGSSNACK  VARCHAR,
    GROESSE_CM      NUMBER,
    HAT_SCHLUESSEL  BOOLEAN
);

INSERT INTO VERDAECHTIGE VALUES
    ('Frosty', 'Pinguin',      'Fischstäbchen',          95,  TRUE),
    ('Luna',   'Schneeeule',   'Blaubeerpfannkuchen',    45,  TRUE),
    ('Bjørn',  'Eisbär',       'Honigbrot',             180,  TRUE),
    ('Ivy',    'Polarfuchs',   'Kekse',                  40,  FALSE),
    ('Finn',   'Robbe',        'Sushi',                 120,  TRUE),
    ('Mika',   'Schneehase',   'Karotten',               35,  FALSE);

--------------------------------------------------------------
-- Kamera-Log
--------------------------------------------------------------

CREATE OR REPLACE TABLE KAMERA_LOG (
    NAME     VARCHAR,
    RAUM     VARCHAR,
    UHRZEIT  TIME
);

INSERT INTO KAMERA_LOG VALUES
    ('Frosty', 'Küche',           '10:30'),
    ('Frosty', 'Konferenzraum',   '12:15'),
    ('Frosty', 'Konferenzraum',   '12:45'),
    ('Luna',   'Küche',           '12:10'),
    ('Luna',   'Labor',           '12:35'),
    ('Luna',   'Küche',           '12:50'),
    ('Bjørn',  'Küche',           '12:05'),
    ('Bjørn',  'Küche',           '12:40'),
    ('Bjørn',  'Büro',            '13:10'),
    ('Ivy',    'Büro',            '11:00'),
    ('Ivy',    'Büro',            '12:30'),
    ('Finn',   'Küche',           '12:20'),
    ('Finn',   'Küche',           '12:55'),
    ('Finn',   'Flur',            '13:15'),
    ('Mika',   'Garten',          '11:45'),
    ('Mika',   'Garten',          '12:30'),
    ('Mika',   'Flur',            '13:00');

--------------------------------------------------------------
-- Beweise
--------------------------------------------------------------

CREATE OR REPLACE TABLE BEWEISE (
    BEWEIS_NR    NUMBER,
    BESCHREIBUNG VARCHAR,
    FUNDORT      VARCHAR
);

INSERT INTO BEWEISE VALUES
    (1, 'Krümel auf dem Boden',              'Küche'),
    (2, 'Blaubeerspuren auf dem Tisch',      'Labor'),
    (3, 'Ein weißes Haar',                   'Küche'),
    (4, 'Blaubeerfleck auf der Türklinke',   'Labor'),
    (5, 'Leerer Teller im Kühlschrank',      'Küche'),
    (6, 'Fußspuren (kleine Krallen)',         'Flur');
