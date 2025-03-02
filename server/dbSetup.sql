CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL PRIMARY KEY COMMENT 'primary key',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name VARCHAR(255) COMMENT 'User Name',
  email VARCHAR(255) UNIQUE COMMENT 'User Email',
  picture VARCHAR(255) COMMENT 'User Picture'
) default charset utf8mb4 COMMENT '';

CREATE TABLE cards (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `rank` VARCHAR(10) NOT NULL,
    suit VARCHAR(10) NOT NULL,
    is_face_card BOOLEAN NOT NULL
);



INSERT INTO
    cards (`rank`, suit, is_face_card)
VALUES
    -- Face cards
    ('King', 'Hearts', TRUE),
    ('Queen', 'Hearts', TRUE),
    ('Jack', 'Hearts', TRUE),
    ('King', 'Diamonds', TRUE),
    ('Queen', 'Diamonds', TRUE),
    ('Jack', 'Diamonds', TRUE),
    ('King', 'Clubs', TRUE),
    ('Queen', 'Clubs', TRUE),
    ('Jack', 'Clubs', TRUE),
    ('King', 'Spades', TRUE),
    ('Queen', 'Spades', TRUE),
    ('Jack', 'Spades', TRUE),
('Ace', 'Hearts', FALSE),
('2', 'Hearts', FALSE),
('3', 'Hearts', FALSE),
('4', 'Hearts', FALSE),
('5', 'Hearts', FALSE),
('6', 'Hearts', FALSE),
('7', 'Hearts', FALSE),
('8', 'Hearts', FALSE),
('9', 'Hearts', FALSE),
('10', 'Hearts', FALSE),
('Ace', 'Diamonds', FALSE),
('2', 'Diamonds', FALSE),
('3', 'Diamonds', FALSE),
('4', 'Diamonds', FALSE),
('5', 'Diamonds', FALSE),
('6', 'Diamonds', FALSE),
('7', 'Diamonds', FALSE),
('8', 'Diamonds', FALSE),
('9', 'Diamonds', FALSE),
('10', 'Diamonds', FALSE),
('Ace', 'Clubs', FALSE),
('2', 'Clubs', FALSE),
('3', 'Clubs', FALSE),
('4', 'Clubs', FALSE),
('5', 'Clubs', FALSE),
('6', 'Clubs', FALSE),
('7', 'Clubs', FALSE),
('8', 'Clubs', FALSE),
('9', 'Clubs', FALSE),
('10', 'Clubs', FALSE),
('Ace', 'Spades', FALSE),
('2', 'Spades', FALSE),
('3', 'Spades', FALSE),
('4', 'Spades', FALSE),
('5', 'Spades', FALSE),
('6', 'Spades', FALSE),
('7', 'Spades', FALSE),
('8', 'Spades', FALSE),
('9', 'Spades', FALSE),
('10', 'Spades', FALSE);