UPDATE flights SET duration = 420 WHERE origin = 'MIT' AND destination = 'UCB';

-- SQL INJECT
-- RACE CONDITION (SQL Transactions BEGIN COMMIT)