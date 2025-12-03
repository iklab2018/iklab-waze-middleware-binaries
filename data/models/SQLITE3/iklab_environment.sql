CREATE TABLE IF NOT EXISTS "iklab_environment" (
    "variable" TEXT CHECK( LENGTH("variable") <= 250 ) NOT NULL UNIQUE,
    "value" TEXT NULL DEFAULT NULL,
    "type" TEXT CHECK( "type" IN ('STR', 'INT', 'FLOAT', 'BOOL', 'LIST', 'JSON') ) NOT NULL
);
INSERT INTO "iklab_environment" ("variable", "value", "type") VALUES
('wazers', NULL, 'LIST'),
('thirdparty', NULL, 'JSON'),
('application_key', NULL, 'STR'),
('application_version', 'v1.0.0', 'STR'),
('application_lang', 'en', 'STR'),
('system_uuid', NULL, 'STR'),
('server_name', NULL, 'STR'),
('trans_common', NULL, 'JSON'),
('trans_waze_alert', NULL, 'JSON');
COMMIT