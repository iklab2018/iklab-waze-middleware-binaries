CREATE TABLE IF NOT EXISTS "iklab_client" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "client_id" TEXT CHECK( LENGTH("client_id") <= 200 ) NOT NULL UNIQUE,
    "dealer_id" TEXT CHECK( LENGTH("client_id") <= 200 ) NOT NULL DEFAULT 'ALL',
    "name" TEXT CHECK( LENGTH("name") <= 250 ) NOT NULL,
    "short_name" TEXT CHECK( LENGTH("short_name") <= 100 ) NULL DEFAULT NULL,
    "country" TEXT CHECK( LENGTH("country") <= 200 ) NULL DEFAULT NULL,
    "city" TEXT CHECK( LENGTH("city") <= 250 ) NULL DEFAULT NULL,
    "address" TEXT NULL DEFAULT NULL,
    "phone" TEXT CHECK( LENGTH("phone") <= 50 ) NULL DEFAULT NULL,
    "email" TEXT CHECK( LENGTH("email") <= 150 ) NULL DEFAULT NULL,
    "timezone" TEXT CHECK( LENGTH("timezone") <= 250 ) NULL DEFAULT NULL,
    "logo" TEXT CHECK( LENGTH("logo") <= 700 ) NULL DEFAULT NULL,
    "status" INTEGER NOT NULL DEFAULT 1
);
INSERT INTO "iklab_client" ("id", "client_id", "dealer_id", "name", "short_name", "country", "city", "address", "phone", "email", "timezone", "logo", "status") VALUES
(1, 'ALL', 'ALL', 'INFOKRAUSE DEVELOPMENTS', 'IKLAB', 'CHILE', 'SANTIAGO', 'AV. DEL VALLE SUR 662 OF. 401 SANTIAGO CHILE', '+56 2 2247 9889', 'hernan@iklab.cl', 'America/Santiago', NULL, 1);
COMMIT