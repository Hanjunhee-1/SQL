/*
https://school.programmers.co.kr/learn/courses/30/lessons/131118

  학습 포인트
    1. group by 사용법
      1-1. 집계 함수를 사용했을 때 사용한다. 
            원래는 집계 함수로 감싸지 않은 조회 컬럼들은 모두 group by 절에 들어가야 하지만 DBMS가 알아서 최적화를 진행해준다.
    2. having과 where의 차이점
      2-1. where은 그룹화 전에 조건을 적용하고, having은 그룹화 후에 조건을 적용한다.
      2-2. 아래의 답에서는 굳이 having을 사용하지 않아도 된다. 오히려 where을 사용하는 것이 옳은데 학습을 위해서 having을 사용했다.
*/

-- 답
select i.rest_id, i.rest_name, i.food_type, i.favorites, i.address, round(avg(r.review_score), 2) as score
from rest_info as i
    join rest_review as r
    on i.rest_id = r.rest_id
group by i.rest_id
having address like "서울%"
order by score desc, i.favorites desc;