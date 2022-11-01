





  

  

  

  


with vars_folders_table as (
    
        select 'staging_folder_name' as var_name, 'staging' as var_value
        union all
        select 'intermediate_folder_name' as var_name, 'intermediate' as var_value
        union all
        select 'marts_folder_name' as var_name, 'marts' as var_value
        
)

select
    var_name as folder_name, 
    

    split_part(
        var_name,
        '_',
        1
        )

 as model_type,
    var_value as folder_name_value
from vars_folders_table