/*
https://school.programmers.co.kr/learn/courses/30/lessons/131536

  학습 포인트
    1. group by 심화
      1-1. 집계 함수를 사용했을 때 뿐만이 아니라 특정 데이터들끼리 그룹화하여 "구분"할 때도 사용한다는 것을 꼭 기억하자.
    2. count 함수
      2-1. count(*)은 행의 개수를 세는 것이고, count(컬럼명)은 컬럼의 값이 null이 아닌 행의 개수를 세는 것이다.
*/

-- 답
select user_id, product_id
from online_sale
group by user_id, product_id
having count(*) > 1
order by user_id asc, product_id desc;