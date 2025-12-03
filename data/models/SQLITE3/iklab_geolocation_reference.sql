CREATE TABLE IF NOT EXISTS "iklab_geolocation_reference" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "client_id" TEXT CHECK( LENGTH("client_id") <= 200 ) NOT NULL,
    "location_id" TEXT CHECK( LENGTH("location_id") <= 200 ) NOT NULL,
    "geo_name" TEXT CHECK( LENGTH("geo_name") <= 500 ) NOT NULL,
    "geo_lat" REAL NOT NULL,
    "geo_lon" REAL NOT NULL,
    FOREIGN KEY ("client_id") REFERENCES "iklab_client" ("client_id") ON DELETE RESTRICT,
    FOREIGN KEY ("location_id") REFERENCES "iklab_location" ("location_id") ON DELETE RESTRICT
)