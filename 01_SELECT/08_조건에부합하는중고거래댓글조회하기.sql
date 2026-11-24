/*
https://school.programmers.co.kr/learn/courses/30/lessons/164673


  학습 포인트
    1. 기본키와 외래키 join 잘해서 데이터를 조회하기.
      1-1. 별칭을 통해서 테이블 이름을 간소화시키고 각 테이블에서 어떤 데이터가 필요한지 생각하기
*/

-- 답
select b.title, r.board_id, r.reply_id, r.writer_id, r.contents, r.created_date
from used_goods_board as b
    join used_goods_reply as r
    on b.board_id = r.board_id
where b.created_date >= '2022-10-01' 
    and b.created_date < '2022-11-01'
order by r.created_date asc, b.title asc;