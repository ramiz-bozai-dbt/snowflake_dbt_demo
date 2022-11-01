-- one row for each resource in the graph
with unioned as (

    
    

        (
            select

                cast('ramiz_bozai_sandbox_dev.dbt_rbozai.stg_nodes' as 
    varchar
) as _dbt_source_relation,
                
                    cast("UNIQUE_ID" as character varying(153)) as "UNIQUE_ID" ,
                    cast("NAME" as character varying(115)) as "NAME" ,
                    cast("RESOURCE_TYPE" as character varying(8)) as "RESOURCE_TYPE" ,
                    cast("FILE_PATH" as character varying(67)) as "FILE_PATH" ,
                    cast("IS_ENABLED" as BOOLEAN) as "IS_ENABLED" ,
                    cast("MATERIALIZED" as character varying(11)) as "MATERIALIZED" ,
                    cast("ON_SCHEMA_CHANGE" as character varying(6)) as "ON_SCHEMA_CHANGE" ,
                    cast("DATABASE" as character varying(74)) as "DATABASE" ,
                    cast("SCHEMA" as character varying(13)) as "SCHEMA" ,
                    cast("PACKAGE_NAME" as character varying(27)) as "PACKAGE_NAME" ,
                    cast("ALIAS" as character varying(63)) as "ALIAS" ,
                    cast("IS_DESCRIBED" as BOOLEAN) as "IS_DESCRIBED" ,
                    cast("COLUMN_NAME" as character varying(26)) as "COLUMN_NAME" ,
                    cast("META" as character varying(2)) as "META" ,
                    cast(null as character varying(9)) as "EXPOSURE_TYPE" ,
                    cast(null as character varying(4)) as "MATURITY" ,
                    cast(null as character varying(81)) as "URL" ,
                    cast(null as character varying(15)) as "OWNER_NAME" ,
                    cast(null as character varying(21)) as "OWNER_EMAIL" ,
                    cast(null as character varying(1)) as "METRIC_TYPE" ,
                    cast(null as character varying(1)) as "MODEL" ,
                    cast(null as character varying(23)) as "LABEL" ,
                    cast(null as character varying(1)) as "SQL" ,
                    cast(null as character varying(11)) as "TIMESTAMP" ,
                    cast(null as character varying(11)) as "DIMENSIONS" ,
                    cast(null as character varying(24)) as "FILTERS" ,
                    cast(null as character varying(15)) as "SOURCE_NAME" ,
                    cast(null as BOOLEAN) as "IS_SOURCE_DESCRIBED" ,
                    cast(null as character varying(22)) as "LOADED_AT_FIELD" ,
                    cast(null as character varying(1)) as "LOADER" ,
                    cast(null as character varying(13)) as "IDENTIFIER" 

            from ramiz_bozai_sandbox_dev.dbt_rbozai.stg_nodes

            
        )

        union all
        

        (
            select

                cast('ramiz_bozai_sandbox_dev.dbt_rbozai.stg_exposures' as 
    varchar
) as _dbt_source_relation,
                
                    cast("UNIQUE_ID" as character varying(153)) as "UNIQUE_ID" ,
                    cast("NAME" as character varying(115)) as "NAME" ,
                    cast("RESOURCE_TYPE" as character varying(8)) as "RESOURCE_TYPE" ,
                    cast("FILE_PATH" as character varying(67)) as "FILE_PATH" ,
                    cast(null as BOOLEAN) as "IS_ENABLED" ,
                    cast(null as character varying(11)) as "MATERIALIZED" ,
                    cast(null as character varying(6)) as "ON_SCHEMA_CHANGE" ,
                    cast(null as character varying(74)) as "DATABASE" ,
                    cast(null as character varying(13)) as "SCHEMA" ,
                    cast("PACKAGE_NAME" as character varying(27)) as "PACKAGE_NAME" ,
                    cast(null as character varying(63)) as "ALIAS" ,
                    cast("IS_DESCRIBED" as BOOLEAN) as "IS_DESCRIBED" ,
                    cast(null as character varying(26)) as "COLUMN_NAME" ,
                    cast("META" as character varying(2)) as "META" ,
                    cast("EXPOSURE_TYPE" as character varying(9)) as "EXPOSURE_TYPE" ,
                    cast("MATURITY" as character varying(4)) as "MATURITY" ,
                    cast("URL" as character varying(81)) as "URL" ,
                    cast("OWNER_NAME" as character varying(15)) as "OWNER_NAME" ,
                    cast("OWNER_EMAIL" as character varying(21)) as "OWNER_EMAIL" ,
                    cast(null as character varying(1)) as "METRIC_TYPE" ,
                    cast(null as character varying(1)) as "MODEL" ,
                    cast(null as character varying(23)) as "LABEL" ,
                    cast(null as character varying(1)) as "SQL" ,
                    cast(null as character varying(11)) as "TIMESTAMP" ,
                    cast(null as character varying(11)) as "DIMENSIONS" ,
                    cast(null as character varying(24)) as "FILTERS" ,
                    cast(null as character varying(15)) as "SOURCE_NAME" ,
                    cast(null as BOOLEAN) as "IS_SOURCE_DESCRIBED" ,
                    cast(null as character varying(22)) as "LOADED_AT_FIELD" ,
                    cast(null as character varying(1)) as "LOADER" ,
                    cast(null as character varying(13)) as "IDENTIFIER" 

            from ramiz_bozai_sandbox_dev.dbt_rbozai.stg_exposures

            
        )

        union all
        

        (
            select

                cast('ramiz_bozai_sandbox_dev.dbt_rbozai.stg_metrics' as 
    varchar
) as _dbt_source_relation,
                
                    cast("UNIQUE_ID" as character varying(153)) as "UNIQUE_ID" ,
                    cast("NAME" as character varying(115)) as "NAME" ,
                    cast("RESOURCE_TYPE" as character varying(8)) as "RESOURCE_TYPE" ,
                    cast("FILE_PATH" as character varying(67)) as "FILE_PATH" ,
                    cast(null as BOOLEAN) as "IS_ENABLED" ,
                    cast(null as character varying(11)) as "MATERIALIZED" ,
                    cast(null as character varying(6)) as "ON_SCHEMA_CHANGE" ,
                    cast(null as character varying(74)) as "DATABASE" ,
                    cast(null as character varying(13)) as "SCHEMA" ,
                    cast("PACKAGE_NAME" as character varying(27)) as "PACKAGE_NAME" ,
                    cast(null as character varying(63)) as "ALIAS" ,
                    cast("IS_DESCRIBED" as BOOLEAN) as "IS_DESCRIBED" ,
                    cast(null as character varying(26)) as "COLUMN_NAME" ,
                    cast("META" as character varying(2)) as "META" ,
                    cast(null as character varying(9)) as "EXPOSURE_TYPE" ,
                    cast(null as character varying(4)) as "MATURITY" ,
                    cast(null as character varying(81)) as "URL" ,
                    cast(null as character varying(15)) as "OWNER_NAME" ,
                    cast(null as character varying(21)) as "OWNER_EMAIL" ,
                    cast("METRIC_TYPE" as character varying(1)) as "METRIC_TYPE" ,
                    cast("MODEL" as character varying(1)) as "MODEL" ,
                    cast("LABEL" as character varying(23)) as "LABEL" ,
                    cast("SQL" as character varying(1)) as "SQL" ,
                    cast("TIMESTAMP" as character varying(11)) as "TIMESTAMP" ,
                    cast("DIMENSIONS" as character varying(11)) as "DIMENSIONS" ,
                    cast("FILTERS" as character varying(24)) as "FILTERS" ,
                    cast(null as character varying(15)) as "SOURCE_NAME" ,
                    cast(null as BOOLEAN) as "IS_SOURCE_DESCRIBED" ,
                    cast(null as character varying(22)) as "LOADED_AT_FIELD" ,
                    cast(null as character varying(1)) as "LOADER" ,
                    cast(null as character varying(13)) as "IDENTIFIER" 

            from ramiz_bozai_sandbox_dev.dbt_rbozai.stg_metrics

            
        )

        union all
        

        (
            select

                cast('ramiz_bozai_sandbox_dev.dbt_rbozai.stg_sources' as 
    varchar
) as _dbt_source_relation,
                
                    cast("UNIQUE_ID" as character varying(153)) as "UNIQUE_ID" ,
                    cast("NAME" as character varying(115)) as "NAME" ,
                    cast("RESOURCE_TYPE" as character varying(8)) as "RESOURCE_TYPE" ,
                    cast("FILE_PATH" as character varying(67)) as "FILE_PATH" ,
                    cast("IS_ENABLED" as BOOLEAN) as "IS_ENABLED" ,
                    cast(null as character varying(11)) as "MATERIALIZED" ,
                    cast(null as character varying(6)) as "ON_SCHEMA_CHANGE" ,
                    cast("DATABASE" as character varying(74)) as "DATABASE" ,
                    cast("SCHEMA" as character varying(13)) as "SCHEMA" ,
                    cast("PACKAGE_NAME" as character varying(27)) as "PACKAGE_NAME" ,
                    cast("ALIAS" as character varying(63)) as "ALIAS" ,
                    cast("IS_DESCRIBED" as BOOLEAN) as "IS_DESCRIBED" ,
                    cast(null as character varying(26)) as "COLUMN_NAME" ,
                    cast("META" as character varying(2)) as "META" ,
                    cast(null as character varying(9)) as "EXPOSURE_TYPE" ,
                    cast(null as character varying(4)) as "MATURITY" ,
                    cast(null as character varying(81)) as "URL" ,
                    cast(null as character varying(15)) as "OWNER_NAME" ,
                    cast(null as character varying(21)) as "OWNER_EMAIL" ,
                    cast(null as character varying(1)) as "METRIC_TYPE" ,
                    cast(null as character varying(1)) as "MODEL" ,
                    cast(null as character varying(23)) as "LABEL" ,
                    cast(null as character varying(1)) as "SQL" ,
                    cast(null as character varying(11)) as "TIMESTAMP" ,
                    cast(null as character varying(11)) as "DIMENSIONS" ,
                    cast(null as character varying(24)) as "FILTERS" ,
                    cast("SOURCE_NAME" as character varying(15)) as "SOURCE_NAME" ,
                    cast("IS_SOURCE_DESCRIBED" as BOOLEAN) as "IS_SOURCE_DESCRIBED" ,
                    cast("LOADED_AT_FIELD" as character varying(22)) as "LOADED_AT_FIELD" ,
                    cast("LOADER" as character varying(1)) as "LOADER" ,
                    cast("IDENTIFIER" as character varying(13)) as "IDENTIFIER" 

            from ramiz_bozai_sandbox_dev.dbt_rbozai.stg_sources

            
        )

        

),

naming_convention_prefixes as (
    select * from ramiz_bozai_sandbox_dev.dbt_rbozai.stg_naming_convention_prefixes
), 

naming_convention_folders as (
    select * from ramiz_bozai_sandbox_dev.dbt_rbozai.stg_naming_convention_folders
), 

unioned_with_calc as (
    select 
        *,
        case 
            when resource_type = 'source' then  source_name || '.' || name
            else name 
        end as resource_name,
        case
            when resource_type = 'source' then null
            else 

    split_part(
        name,
        '_',
        1
        )

||'_' 
        end as prefix,
        

    replace(
        file_path,
        regexp_replace(file_path,'.*/',''),
        ''
    )
    

 as directory_path,
        regexp_replace(file_path,'.*/','') as file_name 
    from unioned
    where coalesce(is_enabled, True) = True and package_name != 'dbt_project_evaluator'
), 

joined as (

    select
        unioned_with_calc.unique_id as resource_id, 
        unioned_with_calc.resource_name, 
        unioned_with_calc.prefix, 
        unioned_with_calc.resource_type, 
        unioned_with_calc.file_path, 
        unioned_with_calc.directory_path,
        unioned_with_calc.file_name,
        case 
            when unioned_with_calc.resource_type in ('test', 'source', 'metric', 'exposure', 'seed') then null
            else naming_convention_prefixes.model_type 
        end as model_type_prefix,
        case 
            when unioned_with_calc.resource_type in ('test', 'source', 'metric', 'exposure', 'seed') then null
            when 

    position(
        naming_convention_folders.folder_name_value in unioned_with_calc.directory_path
    ) = 0 then null
            else naming_convention_folders.model_type 
        end as model_type_folder,
        

    position(
        naming_convention_folders.folder_name_value in unioned_with_calc.directory_path
    ) as position_folder,  
        nullif(unioned_with_calc.column_name, '') as column_name,
        unioned_with_calc.resource_name like 'unique%' and unioned_with_calc.resource_type = 'test' as is_not_null_test,
        unioned_with_calc.resource_name like 'not_null%' and unioned_with_calc.resource_type = 'test' as is_unique_test,
        unioned_with_calc.is_enabled, 
        unioned_with_calc.materialized, 
        unioned_with_calc.on_schema_change, 
        unioned_with_calc.database, 
        unioned_with_calc.schema, 
        unioned_with_calc.package_name, 
        unioned_with_calc.alias, 
        unioned_with_calc.is_described, 
        unioned_with_calc.exposure_type, 
        unioned_with_calc.maturity, 
        unioned_with_calc.url, 
        unioned_with_calc.owner_name,
        unioned_with_calc.owner_email,
        unioned_with_calc.meta,
        unioned_with_calc.metric_type, 
        unioned_with_calc.model, 
        unioned_with_calc.label, 
        unioned_with_calc.sql, 
        unioned_with_calc.timestamp as timestamp,  
        unioned_with_calc.source_name, -- NULL for non-source resources
        unioned_with_calc.is_source_described, 
        unioned_with_calc.loaded_at_field, 
        unioned_with_calc.loader, 
        unioned_with_calc.identifier

    from unioned_with_calc
    left join naming_convention_prefixes
        on unioned_with_calc.prefix = naming_convention_prefixes.prefix_value

    cross join naming_convention_folders   

), 

calculate_model_type as (
    select 
        *, 
        case 
            when resource_type in ('test', 'source', 'metric', 'exposure', 'seed') then null
            -- by default we will define the model type based on its prefix in the case prefix and folder types are different
            else coalesce(model_type_prefix, model_type_folder, 'other') 
        end as model_type,
        row_number() over (partition by resource_id order by position_folder desc) as folder_name_rank
    from joined
),

final as (
    select
        *
    from calculate_model_type
    where folder_name_rank = 1
)

select 
    *
from final