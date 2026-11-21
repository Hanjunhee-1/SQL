/*
https://school.programmers.co.kr/learn/courses/30/lessons/133025

  학습 포인트
  1. join 사용법
    1-1. table1 join table2 on 조건
    1-2. inner join은 서로 가지고 있는 것만
    1-3. left join은 왼쪽 테이블이 가지고 있는 것에 대해 모두
    1-4. right join은 오른쪽 테이블이 가지고 있는 것에 대해 모두
*/

-- 답
select half.flavor
from first_half as half
join icecream_info as info
    on half.flavor = info.flavor
where half.total_order > 3000
    and info.ingredient_type = 'fruit_based'
order by half.total_order desc;