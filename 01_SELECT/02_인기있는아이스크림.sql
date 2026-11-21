/*
https://school.programmers.co.kr/learn/courses/30/lessons/133024

  학습 포인트
  1. order by 절 사용법
    1-1. 오름차순 정렬과 내림차순 정렬의 차이
    1-2. order by column_name1 [asc|desc], column_name2 [asc|desc], ...
*/

-- 답
select flavor
from first_half
order by total_order desc, shipment_id asc;