-- create the database
CREATE DATABASE blogcmsDb;

-- create user table
CREATE TABLE users (name varchar(20), last_name varchar(20), email varchar(100) UNIQUE, username varchar(50) PRIMARY KEY, pw varchar(500), create_date date, role varchar(20));

-- create categories table 
CREATE TABLE categories (category_id int PRIMARY KEY, category_name varchar(20));

-- create articles table
CREATE TABLE articles (article_id int PRIMARY KEY, title varchar(200), content MEDIUMTEXT, create_date date, modify_date date, author_username varchar(50), category_id int, FOREIGN KEY(author_username)REFERENCES users(username), FOREIGN KEY(category_id)REFERENCES categories(category_id));

-- create comments table
CREATE TABLE comments (comment_id int PRIMARY KEY, content MEDIUMTEXT, create_date date, author_username varchar(50), article_id int, FOREIGN KEY(author_username)REFERENCES users(username), FOREIGN KEY(article_id)REFERENCES articles(article_id));

-- insert to tables
INSERT INTO users (username, name, last_name, email, pw, create_date, role) VALUES
('admin_blog', 'Admin', 'Blog', 'admin@blogcms.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-01-15', 'admin'),
('marie_dubois', 'Marie', 'Dubois', 'marie.dubois@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-02-10', 'editor'),
('pierre_leroy', 'Pierre', 'Leroy', 'pierre.leroy@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-02-15', 'author'),
('sophie_martin', 'Sophie', 'Martin', 'sophie.martin@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-03-01', 'author'),
('jean_dupont', 'Jean', 'Dupont', 'jean.dupont@yahoo.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-03-10', 'author'),
('lucie_bernard', 'Lucie', 'Bernard', 'lucie.bernard@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-03-15', 'author'),
('thomas_petit', 'Thomas', 'Petit', 'thomas.petit@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-03-20', 'subscriber'),
('julie_roux', 'Julie', 'Roux', 'julie.roux@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-04-01', 'subscriber'),
('marc_vincent', 'Marc', 'Vincent', 'marc.vincent@yahoo.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-04-05', 'author'),
('isabelle_leroy', 'Isabelle', 'Leroy', 'isabelle.leroy@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-04-10', 'subscriber'),
('david_morel', 'David', 'Morel', 'david.morel@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-04-15', 'author'),
('caroline_duval', 'Caroline', 'Duval', 'caroline.duval@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-05-02', 'editor'),
('nicolas_lambert', 'Nicolas', 'Lambert', 'nicolas.lambert@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-05-10', 'author'),
('elodie_garnier', 'Elodie', 'Garnier', 'elodie.garnier@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-05-20', 'subscriber'),
('antoine_chevalier', 'Antoine', 'Chevalier', 'antoine.chevalier@yahoo.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-06-01', 'author'),
('clara_royer', 'Clara', 'Royer', 'clara.royer@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-06-10', 'author'),
('quentin_menard', 'Quentin', 'Menard', 'quentin.menard@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-06-15', 'subscriber'),
('amelie_colin', 'Amelie', 'Colin', 'amelie.colin@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-07-03', 'author'),
('vincent_gauthier', 'Vincent', 'Gauthier', 'vincent.gauthier@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-07-12', 'editor'),
('marine_lebrun', 'Marine', 'Lebrun', 'marine.lebrun@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-07-20', 'subscriber');


INSERT INTO categories (category_id, category_name) VALUES
(1, 'Technologie'),
(2, 'Santé'),
(3, 'Voyage'),
(4, 'Cuisine'),
(5, 'Sport'),
(6, 'Éducation'),
(7, 'Finance'),
(8, 'Mode');


INSERT INTO articles (article_id, title, content, create_date, modify_date, author_username, category_id) VALUES
(1, 'Tensions Technologiques', 'Explorez les technologies émergentes qui vont transformer notre quotidien cette année...', '2024-02-20', '2024-02-21', 'pierre_leroy', 1),
(2, 'Santé au Travail', 'Des conseils pratiques pour préserver votre santé physique et mentale...', '2024-02-25', '2024-02-25', 'sophie_martin', 2),
(3, 'Destinations 2024', 'Découvrez les destinations qui vont marquer l''année 2024...', '2024-03-05', '2024-03-06', 'jean_dupont', 3),
(4, 'Gâteau Chocolat', 'Une recette simple et rapide pour un gâteau au chocolat irrésistible...', '2024-03-10', '2024-03-11', 'lucie_bernard', 4),
(5, 'Guide Marathon', 'Tout ce qu''il faut savoir pour préparer son premier marathon...', '2024-03-15', '2024-03-16', 'marc_vincent', 5),
(6, 'Apprendre à Coder', 'Comment j''ai appris la programmation web en moins de 6 mois...', '2024-03-20', '2024-03-21', 'david_morel', 6),
(7, 'Cryptomonnaie 2024', 'Guide pour débutants sur les opportunités et risques...', '2024-04-01', '2024-04-02', 'nicolas_lambert', 7),
(8, 'Mode Printemps 2024', 'Découvrez les must-have de la saison prochaine...', '2024-04-05', '2024-04-06', 'antoine_chevalier', 8),
(9, 'Avantages Télétravail', 'Comment le travail à distance peut booster vos performances...', '2024-04-10', '2024-04-11', 'amelie_colin', 1),
(10, 'Superaliments Immunité', '10 aliments à intégrer dans votre alimentation pour être en forme...', '2024-04-15', '2024-04-16', 'clara_royer', 2),
(11, 'Voyager en Solo', 'Guide pratique pour voyager seul en toute sécurité...', '2024-04-20', '2024-04-21', 'vincent_gauthier', 3),
(12, 'Pâtisserie Française', 'Apprenez les techniques fondamentales de la pâtisserie...', '2024-05-02', '2024-05-03', 'marine_lebrun', 4),
(13, 'Yoga Débutants', 'Un programme progressif pour découvrir le yoga...', '2024-05-10', '2024-05-11', 'jean_dupont', 5),
(14, 'Apprentissage Langues', 'Comparatif des différentes approches pour apprendre une langue...', '2024-05-20', '2024-05-21', 'lucie_bernard', 6),
(15, 'Économiser Achat Immob', 'Stratégies pour constituer son apport personnel...', '2024-06-01', '2024-06-02', 'marc_vincent', 7),
(16, 'Style Minimaliste', 'Comment adopter une garde-robe minimaliste et élégante...', '2024-06-10', '2024-06-11', 'david_morel', 8),
(17, 'Intelligence Artificiel', 'Comprendre les bases de l''IA et ses applications...', '2024-06-15', '2024-06-16', 'nicolas_lambert', 1),
(18, 'Méditation Stress', 'Techniques de méditation accessibles à tous...', '2024-07-03', '2024-07-04', 'antoine_chevalier', 2),
(19, 'Voyage Petit Budget', 'Astuces pour voyager sans se ruiner...', '2024-07-12', '2024-07-13', 'clara_royer', 3),
(20, 'Cuisine Marocaine', 'Découverte des saveurs et traditions culinaires du Maroc...', '2024-07-20', '2024-07-21', 'amelie_colin', 4),
(21, 'Préparation Ski', 'Conseils pour se préparer avant la saison de ski...', '2024-08-01', '2024-08-02', 'vincent_gauthier', 5),
(22, 'Outils Numériques Édu', 'Les meilleures applications pour apprendre et enseigner...', '2024-08-10', '2024-08-11', 'marine_lebrun', 6),
(23, 'Marchés Boursiers', 'Guide pour débutants en bourse...', '2024-08-20', '2024-08-21', 'pierre_leroy', 7),
(24, 'Style Casual Chic', 'Comment être élégant tout en restant confortable...', '2024-09-01', '2024-09-02', 'sophie_martin', 8),
(25, 'Sécurité Informatique', 'Protégez vos données et votre vie privée en ligne...', '2024-09-10', '2024-09-11', 'jean_dupont', 1),
(26, 'Importance du Sommeil', 'Comment améliorer la qualité de son sommeil...', '2024-09-20', '2024-09-21', 'lucie_bernard', 2),
(27, 'Beaux Villages France', 'Découverte des villages classés parmi les plus beaux de France...', '2024-10-01', '2024-10-02', 'marc_vincent', 3),
(28, 'Cuisson Santé', 'Cuire ses aliments tout en préservant les nutriments...', '2024-10-10', '2024-10-11', 'david_morel', 4),
(29, 'CrossFit Analyse', 'Analyse complète de cette discipline sportive...', '2024-10-20', '2024-10-21', 'nicolas_lambert', 5),
(30, 'Apprendre par Jeu', 'Utiliser le jeu comme outil d''apprentissage...', '2024-11-01', '2024-11-02', 'antoine_chevalier', 6);


INSERT INTO comments (comment_id, content, create_date, author_username, article_id) VALUES
(1, 'Excellent article, très bien documenté !', '2024-02-21', 'jean_dupont', 1),
(2, 'Je ne suis pas tout à fait d''accord sur certains points.', '2024-02-22', 'sophie_martin', 1),
(3, 'Cela m''a beaucoup aidé, merci pour ces conseils.', '2024-02-25', 'thomas_petit', 2),
(4, 'Très bel article, les photos sont magnifiques !', '2024-02-26', 'lucie_bernard', 3),
(5, 'Je trouve que certains conseils sont dangereux.', '2024-02-27', 'pierre_leroy', 4),
(6, 'Parfait pour les débutants comme moi, merci !', '2024-02-28', 'julie_roux', 5),
(7, 'Très détaillé, j''ai appris beaucoup de choses.', '2024-02-29', 'marc_vincent', 6),
(8, 'C''est exactement ce que je cherchais, merci !', '2024-03-01', 'isabelle_leroy', 7),
(9, 'Je ne comprends pas la partie sur les investissements.', '2024-03-02', 'david_morel', 8),
(10, 'Super article, j''ai hâte de lire la suite !', '2024-03-03', 'caroline_duval', 9),
(11, 'Les tendances présentées sont déjà dépassées.', '2024-03-04', 'nicolas_lambert', 10),
(12, 'Je vais essayer la recette ce week-end !', '2024-03-05', 'elodie_garnier', 11),
(13, 'Bonnes astuces pour économiser, merci.', '2024-03-06', 'antoine_chevalier', 12),
(14, 'Le style minimaliste n''est pas pour tout le monde.', '2024-03-07', 'clara_royer', 13),
(15, 'Très bon tutoriel sur l''IA pour débutants.', '2024-03-08', 'quentin_menard', 14),
(16, 'La méditation a changé ma vie, merci pour l''article.', '2024-03-09', 'amelie_colin', 15),
(17, 'Voyager avec un petit budget c''est possible !', '2024-03-10', 'vincent_gauthier', 16),
(18, 'Les plats marocains sont délicieux, merci.', '2024-03-11', 'marine_lebrun', 17),
(19, 'Je me prépare pour le ski, merci pour les conseils.', '2024-03-12', 'pierre_leroy', 18),
(20, 'Quelles applications recommandez-vous pour les enfants ?', '2024-03-13', 'sophie_martin', 19),
(21, 'La bourse me fait peur, merci pour les explications.', '2024-03-14', 'jean_dupont', 20),
(22, 'Je cherche justement un style casual chic, merci !', '2024-03-15', 'lucie_bernard', 21),
(23, 'Important de parler de sécurité informatique.', '2024-03-16', 'thomas_petit', 22),
(24, 'Je dors mal, merci pour ces conseils.', '2024-03-17', 'julie_roux', 23),
(25, 'J''ai visité certains villages, ils sont magnifiques !', '2024-03-18', 'marc_vincent', 24);



-- add column to tables 
ALTER TABLE articles 
ADD article_status varchar(100) DEFAULT "published";

ALTER TABLE comments 
ADD comment_type varchar(100) DEFAULT "normal";