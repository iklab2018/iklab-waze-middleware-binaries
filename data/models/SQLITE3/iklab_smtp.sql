CREATE TABLE IF NOT EXISTS "iklab_smtp" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "client_id" TEXT CHECK( LENGTH("client_id") <= 200 ) NOT NULL UNIQUE,
    "type" TEXT CHECK( "type" IN ('CUSTOM', 'GOOGLE', 'MICROSOFT') ) NOT NULL,
    "settings" TEXT NULL DEFAULT NULL,
    FOREIGN KEY ("client_id") REFERENCES "iklab_client" ("client_id") ON DELETE RESTRICT
)