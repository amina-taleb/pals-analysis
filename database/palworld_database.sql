CREATE DATABASE palworld_database;

USE palworld_database;
-- 
CREATE TABLE combat_attribute (
    id INT PRIMARY KEY,
    chinese_name TEXT,
    name TEXT,
    codename TEXT,
    overridenametextid TEXT,
    nameprefixid TEXT,
    overridepartnerskilltextid TEXT,
    ispal BOOLEAN,
    tribe TEXT,
    bpclass TEXT,
    variant TEXT,
    volume_size TEXT,
    rarity INT,
    element_1 TEXT,
    element_2 TEXT,
    genuscategory TEXT,
    organization TEXT,
    weapon TEXT,
    weaponequip BOOLEAN,
    nocturnal TEXT,
    total_4d INT,
    hp INT,
    melee_attack INT,
    remote_attack INT,
    defense INT,
    support INT,
    speed_of_work INT,
    level_1 TEXT,
    level_20 TEXT,
    level_50 TEXT,
    airresponse TEXT,
    endurance INT,
    slow_walking_speed INT,
    walking_speed INT,
    running_speed INT,
    riding_sprint_speed TEXT,
    damage_multiplier TEXT,
    catch_rate TEXT,
    experience_multiplier TEXT,
    price INT,
    must_bring_entry_1 TEXT,
    must_bring_entry_2 TEXT,
    numerical_description TEXT,
    lv1 TEXT,
    lv2 TEXT,
    lv3 TEXT,
    lv4 TEXT,
    lv5 TEXT,
    skill_description TEXT
);
CREATE TABLE hidden_attribute (
	id INT PRIMARY KEY,
    chinese_name TEXT,
    code_name TEXT,
    overridenametextid TEXT,
    nameprefixid TEXT,
    overridepartnerskilltextid TEXT,
    ispal BOOLEAN,
    tribe TEXT,
    bpclass TEXT,
    pictural_id INT,
    size TEXT,
    rarity INT,
    element_1 TEXT,
    element_2 TEXT,
    geniuscategory TEXT,
    organization TEXT,
    weapon TEXT,
    weaponequip BOOLEAN,
    hp INT,
    melee_attack INT,
    remote_attack INT,
    defense INT,
    support INT,
    craftspeed INT,
    being_damage_multiplier VARCHAR,
    capture_probability VARCHAR -- 
    
    
    