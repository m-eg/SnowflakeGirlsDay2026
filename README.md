# Snowy's Daten-Detektive

![Snowy's Daten-Detektive Banner](assets/banner.png)

Ein interaktiver SQL-Workshop für Kinder und Jugendliche ohne Vorkenntnisse. Ursprünglich entwickelt für den Girls' Day 2026 bei Snowflake. Die Teilnehmenden lösen gemeinsam einen Detektivfall, indem sie eine Snowflake-Datenbank mit SQL befragen.

## Überblick

| | |
|---|---|
| **Dauer** | ca. 30 Minuten |
| **Zielgruppe** | Ab 10 Jahren, keine Vorkenntnisse |
| **Format** | Snowflake Notebook, interaktiv im Browser |
| **Sprache** | Deutsch |
| **Voraussetzungen** | Snowflake-Account, Browser, Beamer |

## Story

Snowy der Eisbär kommt morgens ins Büro und sein Blaubeerpfannkuchen ist verschwunden! Es gibt sechs Verdächtige. Die Teilnehmenden befragen Schritt für Schritt die Datenbank und finden gemeinsam heraus, wer es war.

## Aufbau

Das Notebook ist so aufgebaut, dass die Teilnehmenden zuerst eine SQL-Abfrage ausführen und danach die Erklärung dazu bekommen. SQL-Konzepte werden dabei schrittweise eingeführt:

1. **Tatort**: Einleitung
2. **Erste Abfrage**: `SELECT * FROM`, Datentypen
3. **Hinweis 1**: `WHERE`
4. **Hinweis 2**: `AND`, `BETWEEN`
5. **Hinweis 3**: `LIKE`
6. **Auflösung**
7. **Bonus**: freie Abfragen
8. **Zusammenfassung** und Datenschutz

Das Notebook lässt sich auch gut mit Lückentexten aufbauen: die SQL-Abfragen sind dann nur teilweise ausgefüllt und die Teilnehmenden ergänzen die fehlenden Teile selbst (z.B. `SELECT _______ FROM ______;`).

## Dateien

```
├── README.md
├── assets/
│   └── banner.png
├── setup.sql
└── Snowys_Daten_Detektive_GirlsDay2026.ipynb
```

## Setup

### 1. Datenbank einrichten

`setup.sql` in Snowflake ausführen. Das erstellt:

- Datenbank `GIRLSDAY` mit Schema `PUBLIC`
- **VERDAECHTIGE**: 6 Verdächtige mit Name, Tier, Lieblingssnack, Größe, Schlüsselstatus
- **KAMERA_LOG**: 17 Kameraeinträge mit Name, Raum, Uhrzeit
- **BEWEISE**: 6 Beweisstücke mit Beschreibung und Fundort

### 2. Notebook hochladen

**Option A, Snowsight:**
1. Snowsight öffnen, Projects, Notebooks
2. Import (.ipynb), `Snowys_Daten_Detektive_GirlsDay2026.ipynb` auswählen
3. Datenbank `GIRLSDAY`, Schema `PUBLIC` auswählen

**Option B, CLI:**
```bash
snow notebook create Snowys_Daten_Detektive_GirlsDay2026 \
  --file Snowys_Daten_Detektive_GirlsDay2026.ipynb \
  --database GIRLSDAY --schema PUBLIC
```

### 3. Snowflake Stage für Workshop Bild

Optional kann zusätzlich eine Snowflake Stage erstellt und die Datei girlsday.png hochgeladen werden.
So kann das Bild anschließend direkt im Notebook angezeigt werden.

## Lizenz

Frei verwendbar für Bildungszwecke.
