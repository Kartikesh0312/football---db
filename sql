-- Players Table
CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(255),
    Age INT,
    nationality VARCHAR(255),
    position VARCHAR(255),
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

-- Teams Table
CREATE TABLE Teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(255),
    established_year INT,
    coach_name VARCHAR(255),
    home_city VARCHAR(255)
);

-- Matches Table
CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    date DATE,
    location VARCHAR(255),
    teamId_A INT,
    teamId_B INT,
    Score_A INT,
    Score_B INT,
    match_attendance INT,
    FOREIGN KEY (teamId_A) REFERENCES Teams(team_id),
    FOREIGN KEY (teamId_B) REFERENCES Teams(team_id)
);

-- Tournaments Table
CREATE TABLE Tournaments (
    tournament_Id INT PRIMARY KEY,
    tournament_name VARCHAR(255),
    tournament_startDate DATE,
    tournament_endDate DATE,
    winner_teamId INT,
    FOREIGN KEY (winner_teamId) REFERENCES Teams(team_id)
);

-- Venues Table
CREATE TABLE Venues (
    VenueId INT PRIMARY KEY,
    VenueName VARCHAR(255),
    capacity INT
);

-- Sponsorships Table
CREATE TABLE Sponsorships (
    SponsorshipId INT PRIMARY KEY,
    SponsorName VARCHAR(255),
    ContractAmt DECIMAL(10, 2),
    ContractStartDate DATE,
    ContractEndDate DATE
);

-- Items Table
CREATE TABLE Items (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(255),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

-- PlayerStats Table
CREATE TABLE PlayerStats (
    stats_id INT PRIMARY KEY,
    player_id INT,
    matches_played INT,
    Goals INT,
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);

-- Sales Table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    item_id INT,
    SaleDate DATE,
    Quantity INT,
    TotalSaleAmt DECIMAL(10, 2),
    FOREIGN KEY (item_id) REFERENCES Items(item_id)
);

-- Injuries Table
CREATE TABLE Injuries (
    Injury_Id INT PRIMARY KEY,
    player_id INT,
    InjuryDescription VARCHAR(255),
    InjuryDate DATE,
    RecoveryTime INT,
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);
