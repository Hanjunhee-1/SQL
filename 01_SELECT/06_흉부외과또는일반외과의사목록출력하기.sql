/*
https://school.programmers.co.kr/learn/courses/30/lessons/132203

  학습 포인트
    1. IN(값1, 값2, 값3, ...) 함수 사용방법
      1-1. or 로 여러 값을 나열할 수 있지만 가독성 및 간단함을 보았을 때 훨씬 좋은 방법.
*/

-- 답
select dr_name, dr_id, mcdp_cd, hire_ymd
from doctor
where mcdp_cd in('CS', 'GS')
order by hire_ymd desc, dr_name asc;