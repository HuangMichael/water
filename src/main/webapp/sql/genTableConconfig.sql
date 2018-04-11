insert into t_table_column_config
SELECT
    c.ordinal_position + (SELECT
            MAX(id)
        FROM
            t_table_column_config) AS id,
    c.column_type,
    c.column_comment AS col_desc,
    c.column_name,
    c.data_type,
        CASE
        WHEN c.IS_NULLABLE = 'YES' THEN 0x1
        WHEN c.IS_NULLABLE = 'NO' THEN 0x0
        ELSE '其他'
    END AS is_null,
    c.CHARACTER_MAXIMUM_LENGTH AS length,
    c.ordinal_position AS sort_no,
    '1' AS status,
    1 AS table_id,
    '' AS a,
    '' AS b

FROM
    information_schema.columns c
WHERE
    c.table_schema = 'water'
        AND c.table_name = 't_customer'