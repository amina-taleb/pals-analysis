create database palworld_database;
use palworld_database;
show databases;  
create table combat_attribute(
    english_name VARCHAR(100),
    chinese_name VARCHAR(100),
    code_name VARCHAR(100),
    is_pal BOOLEAN,
    race VARCHAR(100),
    shape VARCHAR(50),
    size VARCHAR(50),
    rarity INT,
    elemental_attribute VARCHAR(50),
    category VARCHAR(50),
    health INT,
    attack INT,
    defense INT,
    support INT,
    process_speed FLOAT,
    capture_probability FLOAT,
    experience_multiplier FLOAT,
    price INT,
    total_skills INT,
    skill_1 VARCHAR(50),
    skill_2 VARCHAR(50),
    skill_3 VARCHAR(50),
    skill_4 VARCHAR(50),
    night_shift BOOLEAN);
create table job_skill(
    english_name VARCHAR(100),
    level_range VARCHAR(20),
    area_name VARCHAR(100));
CREATE TABLE hidden_attribute (
    english_name VARCHAR(100),
    attribute_name VARCHAR(100),
    value FLOAT);
CREATE TABLE refresh_area (
    english_name VARCHAR(100),
    level_range VARCHAR(20),
    area_name VARCHAR(100));
CREATE TABLE ordinary_boss_attribute (
    boss_name VARCHAR(100),
    health INT,
    attack INT,
    defense INT,
    speed FLOAT);
CREATE TABLE tower_boss_attribute (
    boss_name VARCHAR(100),
    health INT,
    attack INT,
    defense INT,
    speed FLOAT);

LOAD DATA INFILE '/data/Palworld_Data-Tower BOSS attribute comparison.csv' 
INTO TABLE ordinary_boss_attribute
where 'Type' = 'Boss normal'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'


