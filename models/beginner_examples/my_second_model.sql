--This is my second model.
--It builds upon my_first_model.

select
    easy_math * 2 as hard_math
    
from {{ ref('my_first_model') }}