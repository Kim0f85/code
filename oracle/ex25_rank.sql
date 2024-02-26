-- ex25_rank.sql

/*

    순위 함수 
    - rownum 기반으로 만들어진 함수 
    
    1. rank() over(order by 컬럼명 [asc|desc])
    2. dense_rank() over(order by )
    3. row_number() over()





*/

-- tblInsa. 급여순으로 가져오시오. + 순위표시 
select a.*, rownum from 
    (select name, buseo, basicpay from tblInsa order by basicpay desc) a;
    
select 
    name, buseo, basicpay,
    rank() over(order by basicpay desc) as rnum
from tblInsa;

select 
    name, buseo, basicpay,
    dense_rank() over(order by basicpay desc) as rnum
from tblInsa;
    
select 
    name, buseo, basicpay,
    row_number() over(order by basicpay desc) as rnum
from tblInsa;

-- 급여
select * from 
    (select 
        name, buseo, basicpay,
        rank()over(order by basicpay desc) as rnum
    from tblInsa)
        where rnum = 8;
        

select * from 
    (select 
        name, buseo, basicpay,
        rank() over(partition by buseo order by basicpay desc) as rnum
    from tblInsa)
        where rnum = 1;


































































































































































































