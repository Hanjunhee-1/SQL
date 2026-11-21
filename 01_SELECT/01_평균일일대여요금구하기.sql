/*
https://school.programmers.co.kr/learn/courses/30/lessons/151136

  학습 포인트
  1. avg 함수
  2. 소수점 처리를 위한 round 함수
  3. as 를 통한 별칭 처리
*/

-- 답
select round(avg(daily_fee), 0) as AVERAGE_FEE from car_rental_company_car where car_type='SUV';