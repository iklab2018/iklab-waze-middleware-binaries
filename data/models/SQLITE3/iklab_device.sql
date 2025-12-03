CREATE TABLE IF NOT EXISTS "iklab_device" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "client_id" TEXT CHECK( LENGTH("client_id") <= 200 ) NOT NULL,
    "location_id" TEXT CHECK( LENGTH("location_id") <= 200 ) NOT NULL,
    "device_id" TEXT CHECK( LENGTH("device_id") <= 200 ) NOT NULL UNIQUE,
    "device_name" TEXT CHECK( LENGTH("device_name") <= 200 ) NULL DEFAULT NULL,
    "product" TEXT CHECK( LENGTH("product") <= 150 ) NOT NULL,
    "timezone" TEXT CHECK( LENGTH("timezone") <= 250 ) NOT NULL DEFAULT 'UTC',
    "settings" TEXT NULL DEFAULT NULL,
    "others" TEXT NULL DEFAULT NULL,
    "status" INTEGER NOT NULL DEFAULT 0,
    UNIQUE ("client_id", "location_id", "device_id"),
    FOREIGN KEY ("client_id") REFERENCES "iklab_client" ("client_id") ON DELETE RESTRICT,
    FOREIGN KEY ("location_id") REFERENCES "iklab_location" ("location_id") ON DELETE RESTRICT
)