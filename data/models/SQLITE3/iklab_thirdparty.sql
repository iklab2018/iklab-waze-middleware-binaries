CREATE TABLE IF NOT EXISTS "iklab_thirdparty" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "client_id" TEXT CHECK( LENGTH("client_id") <= 200 ) NOT NULL,
    "server_id" TEXT CHECK( LENGTH("server_id") <= 200 ) NOT NULL,
    "server_name" TEXT NULL DEFAULT NULL,
    "platform" TEXT CHECK( "platform" IN ('GENETEC', 'VIVOTEK', 'IKLAB') ) NOT NULL,
    "settings" TEXT NULL DEFAULT NULL,
    "status" INTEGER NOT NULL DEFAULT 0,
    UNIQUE ("client_id", "server_id"),
    FOREIGN KEY ("client_id") REFERENCES "iklab_client" ("client_id") ON DELETE RESTRICT
)