-- Verify flipr:appschema on pg

BEGIN;

-- XXX Add verifications here.
--- ensure schema exists
SELECT 1/COUNT(*) FROM information_schema.schemata WHERE schema_name = 'flipr';
SELECT has_schema_privilege('flipr', 'usage');

ROLLBACK;
