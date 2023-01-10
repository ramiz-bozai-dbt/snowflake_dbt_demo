use database nfl_data;
use schema public;


SELECT 
   metadata$filename, 
   metadata$file_row_number, 
   t.$1, 
   t.$2, 
   t.$3,
   t.$4,
   t.$5,
   t.$6,
   t.$7,
   t.$8,
   t.$9
FROM @NFL_EXTERNAL t;