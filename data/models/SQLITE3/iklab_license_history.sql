CREATE TABLE IF NOT EXISTS "iklab_license_history" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "client_id" TEXT CHECK( LENGTH("client_id") <= 200 ) NOT NULL,
    "product" TEXT CHECK( LENGTH("product") <= 150 ) NOT NULL,
    "code" TEXT NOT NULL,
    "upgrade_uuid" TEXT NOT NULL UNIQUE,
    "register_datetime" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "file_name" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    FOREIGN KEY ("client_id") REFERENCES "iklab_client" ("client_id") ON DELETE RESTRICT,
    FOREIGN KEY ("code") REFERENCES "iklab_license" ("code") ON DELETE RESTRICT
)