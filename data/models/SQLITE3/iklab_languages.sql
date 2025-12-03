CREATE TABLE IF NOT EXISTS "iklab_languages" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "lang_code" TEXT CHECK( LENGTH("lang_code") <= 10 ) NOT NULL UNIQUE,
    "lang_name" TEXT CHECK( LENGTH("lang_name") <= 250 ) NOT NULL,
    "status" TEXT CHECK( "status" IN ('E', 'D') ) NOT NULL DEFAULT 'D'
);
INSERT INTO "iklab_languages" ("id", "lang_code", "lang_name", "status") VALUES
(1, 'es', 'SPANISH', 'E'),
(2, 'en', 'ENGLISH', 'E'),
(3, 'it', 'ITALIAN', 'E'),
(4, 'pt', 'PORTUGUESE', 'D'),
(5, 'fr', 'FRENCH', 'D'),
(6, 'de', 'GERMAN', 'D');
COMMIT