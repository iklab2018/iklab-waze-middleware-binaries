CREATE TABLE IF NOT EXISTS "iklab_license" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "client_id" TEXT CHECK( LENGTH("client_id") <= 200 ) NOT NULL,
    "product" TEXT CHECK( LENGTH("product") <= 150 ) NOT NULL,
    "code" TEXT NOT NULL,
    "register_datetime" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "expire_datetime" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "type" TEXT CHECK( "type" IN ('SUBSCRIPTION', 'PERPETUAL') ) NOT NULL DEFAULT 'SUBSCRIPTION',
    "resources" TEXT NULL DEFAULT NULL,
    "snapshot" TEXT NULL DEFAULT NULL,
    "observation" TEXT NULL DEFAULT NULL,
    FOREIGN KEY ("client_id") REFERENCES "iklab_client" ("client_id") ON DELETE RESTRICT
);
INSERT INTO "iklab_license" ("id", "client_id", "product", "code", "register_datetime", "expire_datetime", "type", "resources", "snapshot", "observation") VALUES
(1, 'ALL', 'ALL', '$2b$10$euOrpBcH5Ma.lgT09e2bP.dfQzhE92V6OadaQ8nkSgTL6zhYC8ADm', '2018-09-04 09:00:00', '2018-09-04 23:59:59', 'PERPETUAL', NULL, NULL, 'License for IKLAB development team');
COMMIT