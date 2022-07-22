--This is my second model, but I didn't follow best practices using the ref function.
--It builds upon my_first_model.

select
    easy_math * 2 as hard_math
    
from ramiz_bozai_sandbox_dev.dbt_rbozai.my_first_model --Not portable!