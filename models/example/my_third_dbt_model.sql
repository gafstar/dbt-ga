SELECT
  t.table_catalog, t.table_schema,t.table_name,
  t.table_type,
  c.column_name,
  c.data_type
FROM "{{ database }}".information_schema.tables t
INNER JOIN "{{ database }}".information_schema.columns c ON c.table_schema = t.table_schema AND c.table_name = t.table_name
WHERE t.table_catalog =  '{{ database.upper() }}' 
  AND t.table_type IN ('BASE TABLE', 'VIEW')
  AND t.table_schema = '{{ schema.upper() }}' 
  AND t.table_name = '{{ alias.upper() }}' 
ORDER BY t.table_schema,
t.table_name;
