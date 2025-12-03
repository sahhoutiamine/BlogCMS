-- 1. INSERT - Création d'un nouvel utilisateur
INSERT INTO users (username, name, last_name, email, pw, create_date, role) VALUE ('jdupont', 'jean', 'dupont', 'jean.dupont@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2022-03-20', 'editeur');


-- 2. SELECT - Récupération d'articles
SELECT title, create_date, article_status FROM articles;


-- 3. UPDATE - Modification de statut
UPDATE articles set article_status = "archive" WHERE create_date <"2024-01-01" and article_status = "draft";

-- 4. DELETE - Nettoyage des commentaires
delete from comments where type = "spam" and create_date < DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

-- 5. WHERE - Filtrage temporel
SELECT * FROM articles WHERE create_date > "2024-12-01";


-- 6. ORDER BY - Tri chronologique
SELECT * FROM users ORDER BY create_date;


-- 7. LIMIT - Articles récents
SELECT * FROM articles ORDER BY create_date DESC LIMIT 5;


-- 8. DISTINCT - Rôles uniques
SELECT DISTINCT role FROM users;


-- 9. AND/OR - Articles par catégorie et statut
select * from articles where category_id =(SELECT category_id from categories WHERE category_name = "Technologie");