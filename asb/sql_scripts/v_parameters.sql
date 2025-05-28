-- Print all the system parameters in v$parameter
SELECT name, value FROM v$parameter;

-- Print all the modifiable system parameters in v$parameter
SELECT name, value, issys_modifiable
FROM v$parameter
ORDER BY name;


-- Parameter change
ALTER SYSTEM SET open_cursors = 500 SCOPE=BOTH;
ALTER SYSTEM SET session_cached_cursors = 100 SCOPE=SPFILE;
ALTER SYSTEM SET cursor_sharing = FORCE SCOPE=BOTH;
ALTER SYSTEM SET optimizer_mode = ALL_ROWS SCOPE=BOTH;
ALTER SYSTEM SET pga_aggregate_target = 300M SCOPE=BOTH;
ALTER SYSTEM SET sga_target = 900M SCOPE=BOTH;
ALTER SYSTEM SET shared_pool_size = 200M SCOPE=BOTH;
ALTER SYSTEM SET db_cache_size = 300M SCOPE=BOTH;
ALTER SYSTEM SET workarea_size_policy = AUTO SCOPE=BOTH;
ALTER SYSTEM SET result_cache_max_size = 8M SCOPE=BOTH;



-- Testing the modified parameters

-- Test 1: open_cursors
SELECT name, value FROM v$parameter WHERE name = 'open_cursors';

-- Test 2: session_cached_cursors (wymaga restartu po zmianie w spfile)
SELECT name, value FROM v$parameter WHERE name = 'session_cached_cursors';

-- Test 3: cursor_sharing
SELECT name, value FROM v$parameter WHERE name = 'cursor_sharing';

-- Test 4: optimizer_mode
SELECT name, value FROM v$parameter WHERE name = 'optimizer_mode';

-- Test 5: pga_aggregate_target
SELECT name, value FROM v$parameter WHERE name = 'pga_aggregate_target';

-- Test 6: sga_target
SELECT name, value FROM v$parameter WHERE name = 'sga_target';

-- Test 7: shared_pool_size
SELECT name, value FROM v$parameter WHERE name = 'shared_pool_size';

-- Test 8: db_cache_size
SELECT name, value FROM v$parameter WHERE name = 'db_cache_size';

-- Test 9: workarea_size_policy
SELECT name, value FROM v$parameter WHERE name = 'workarea_size_policy';

-- Test 10: result_cache_max_size
SELECT name, value FROM v$parameter WHERE name = 'result_cache_max_size';



-- Print all the system parameters in v$parameter
SELECT name, value FROM v$parameter;

SELECT
    name,
    value,
    isdefault,
    issys_modifiable
FROM
    v$parameter
WHERE
    name IN (
        'open_cursors',
        'session_cached_cursors',
        'cursor_sharing',
        'optimizer_mode',
        'pga_aggregate_target',
        'sga_target',
        'shared_pool_size',
        'db_cache_size',
        'workarea_size_policy',
        'result_cache_max_size'
    )
ORDER BY
    name;

