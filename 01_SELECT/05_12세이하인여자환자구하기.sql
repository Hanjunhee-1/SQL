/*
https://school.programmers.co.kr/learn/courses/30/lessons/132201

  학습 포인트
  1. SQL에서 CASE 사용하는 방법
    1-1. CASE WHEN THEN ELSE END 를 사용하여 조건에 따라 값을 반환.
  2. NULL 값에 대한 처리 방법
    2-1. NULL 인지 확인을 하기 위해서는 '=' 연산자가 아닌 'is' 를 사용해야함.
  3. case 를 사용하면 컬럼 값에 대해서 조건문을 적용하여 값을 반환할 수 있는데 이를 as 별칭 연산자를 통해서 테이블에 표시 가능.
    3-1. case 자체가 하나의 컬럼이 된다는 것을 기억하기. 따라서 굳이 select 절에 case 를 적용하기 위한 컬럼 값을 명시할 필요 없음.
*/

-- 답
select pt_name, pt_no, gend_cd, age,
    case 
        when tlno is null then 'NONE'
        else tlno
    end as tlno
from patient
where age <= 12 and gend_cd = 'W'
order by age desc, pt_name asc;