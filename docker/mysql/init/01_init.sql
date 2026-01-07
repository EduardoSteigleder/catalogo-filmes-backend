CREATE DATABASE IF NOT EXISTS catalogo_filmes;
USE catalogo_filmes;

CREATE TABLE IF NOT EXISTS favorites (
  id bigint unsigned NOT NULL AUTO_INCREMENT,
  tmdb_id int NOT NULL,
  title varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  poster_path varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  genre_ids varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  release_date date DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY favorites_tmdb_id_unique (tmdb_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
