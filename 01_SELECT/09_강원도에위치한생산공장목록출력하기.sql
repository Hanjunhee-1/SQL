/*
https://school.programmers.co.kr/learn/courses/30/lessons/131112

  학습 포인트
    1. like 연산자와 와일드 카드의 종류
      1-1. '%': 0개 이상의 문자를 포함하는지?
        ex) 서울 마포구, 서울 강남구, 서울 종로구 -> "서울%"
      1-2. '_': 1개의 문자를 포함하는지?
        ex) 서울시, 인천시, 부산시, 제주시 -> "__시"
*/

-- 답
select factory_id, factory_name, address
from food_factory
where address like "강원도%"
order by factory_id asc;