select a,b,c,d from "{{ database }}".new_schema.tables t
inner join "{{ another_database }}".new_schema.benches b on t.a = b.a
