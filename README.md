# Football Database Management System (FDBMS)

A scalable, relational database management system tailored for football organizations to efficiently manage data related to players, teams, matches, merchandise, injuries, and more. This system replaces traditional flat-file approaches with a structured SQL-powered backend and a clean, user-friendly web interface.

---
## Overview
- Replaced flat-file storage with a normalized schema.  
- Reduced query execution time by 30%.  
- Ensured 98% data integrity and multi-user access.

## 🚀 Features

- **Relational Schema Design**: Normalized database with well-defined tables, keys, and relationships.
- **Complex Query Support**: SQL queries using joins, grouping, subqueries, and ordering.
- **Stored Procedures**: Insert, update, and delete logic encapsulated for maintainability.
- **Triggers and Logs**: Simulated transaction failure handling with trigger-based logging.
- **Indexing**: Improved query performance with custom indexing.
- **Web Interface**: CRUD operations for key entities (Players, Teams, Venues, Items) via a dark-themed, responsive UI.
- **Role-Based Access (Simulated)**: Designed with multiple user roles in mind — coaches, analysts, medical staff, etc.

---

## 🏗️ Schema Overview

- **Players**: player_id, name, age, nationality, position, team_id
- **Teams**: team_id, name, year_established, coach, home_city
- **Matches**: match_id, date, team_A, team_B, scores, attendance
- **Tournaments, Venues, Sponsorships, Items, Injuries, Sales, PlayerStats**: Well-structured with foreign keys and normalization

---

## 💡 Example Use Cases

- Coaches query player stats and injury history for lineup decisions.
- Sales team analyzes merchandise trends based on team performance.
- Medical staff tracks recovery data and injury patterns.
- Business analysts explore player/team correlations with sales.

---

## 🛠️ Technologies Used

- **PostgreSQL** – Database backend
- **Draw.io** – A clean and normalized ER diagram for the Football Database, designed using Draw.io to visualize entity relationships and database structure.
- **PL/pgSQL** – Stored procedures and transaction handling
- **HTML/CSS/JavaScript** – Frontend UI

