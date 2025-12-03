CREATE TABLE IF NOT EXISTS "iklab_thirdparty_buffer" (
    "id" TEXT CHECK( LENGTH("id") <= 250 ) NOT NULL PRIMARY KEY,
    "client_id" TEXT CHECK( LENGTH("client_id") <= 200 ) NOT NULL,
    "server_id" TEXT CHECK( LENGTH("server_id") <= 200 ) NOT NULL,
    "timestamp" INTEGER NOT NULL,
    "registration" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "platform" TEXT CHECK( "platform" IN ('GENETEC', 'VIVOTEK', 'IKLAB') ) NOT NULL,
    "content" TEXT NOT NULL,
    FOREIGN KEY ("client_id") REFERENCES "iklab_client" ("client_id") ON DELETE RESTRICT,
    FOREIGN KEY ("client_id", "server_id") REFERENCES "iklab_thirdparty" ("client_id", "server_id") ON DELETE RESTRICT
)