CREATE TABLE IF NOT EXISTS "iklab_location" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "client_id" TEXT CHECK( LENGTH("client_id") <= 200 ) NOT NULL,
    "location_id" TEXT CHECK( LENGTH("location_id") <= 200 ) NOT NULL UNIQUE,
    "location_name" TEXT CHECK( LENGTH("location_name") <= 500 ) NOT NULL,
    "timezone" TEXT CHECK( LENGTH("timezone") <= 250 ) NOT NULL DEFAULT 'UTC',
    "address" TEXT NULL DEFAULT NULL,
    "others" TEXT NULL DEFAULT NULL,
    "status" INTEGER NOT NULL DEFAULT 0,
    UNIQUE ("client_id", "location_id"),
    FOREIGN KEY ("client_id") REFERENCES "iklab_client" ("client_id") ON DELETE RESTRICT
)