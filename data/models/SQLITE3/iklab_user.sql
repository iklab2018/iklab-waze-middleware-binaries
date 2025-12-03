CREATE TABLE IF NOT EXISTS "iklab_user" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "username" TEXT CHECK( LENGTH("username") <= 200 ) NOT NULL UNIQUE,
    "email" TEXT CHECK( LENGTH("email") <= 200 ) NOT NULL UNIQUE,
    "password" TEXT NOT NULL,
    "client_id" TEXT CHECK( LENGTH("client_id") <= 200 ) NOT NULL,
    "type" TEXT CHECK( "type" IN ('ADMINISTRATOR', 'SUPERVISOR', 'OPERATOR') ) NOT NULL DEFAULT 'OPERATOR',
    "privileges" TEXT NULL DEFAULT NULL,
    "name" TEXT CHECK( LENGTH("name") <= 500 ) NULL DEFAULT NULL,
    "register" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated" TEXT NULL DEFAULT NULL,
    "status" TEXT CHECK( "status" IN ('ENABLED', 'DISABLED') ) NOT NULL DEFAULT 'ENABLED',
    FOREIGN KEY ("client_id") REFERENCES "iklab_client" ("client_id") ON DELETE RESTRICT
)