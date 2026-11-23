/*
https://school.programmers.co.kr/learn/courses/30/lessons/131120

  학습 포인트
    1. DATE 포맷의 값에서 원하는 부분을 어떻게 추출할 것인가? 예시) date_column = '2026-11-23'
      1-1. 연도 부분만 추출하고 싶다면? year(date_column) => 2026 반환
      1-2. 월 부분만 추출하고 싶다면? month(date_column) => 11 반환
      1-3. 일 부분만 추출하고 싶다면? day(date_column) => 23 반환
    2. NULL 값이 아닌 것만 고르고 싶을 때는 is not null 을 사용.
*/

-- 답
select member_id, member_name, gender, date_of_birth
from member_profile
where 
    tlno is not null
    and month(date_of_birth) = 3
    and gender = 'W'
order by member_id asc;