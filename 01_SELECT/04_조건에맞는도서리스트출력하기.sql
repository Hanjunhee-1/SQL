/*
https://school.programmers.co.kr/learn/courses/30/lessons/144853

  학습 포인트
  1. 날짜 형식에 대한 비교
    1-1. 수학 수식 연산(>, <, >=, <=, =, !=)을 통해 해결 가능.
    1-2. between A and B 를 통해 A와 B 사이의 값인지 비교 가능.
    1-3. 문제 조건에 따라 '2021년'에 출판된 도서만 출력해야 할 때는 YEAR() 함수를 통해서도 가능.
          ex) YEAR(published_date) = 2021

    1-4. 조금 더 디테일하게 DATETIME 까지 고려하면 좋음.
    DB에 'YYYY-MM-DD HH:MM:SS' 형식으로 저장되어 있을 수 있는데 이럴 때는
    published_date < '2022-01-01' 과 같이 해주는 것이 좋음.
*/

-- 답
select book_id, published_date
from book
where (published_date >= '2021-01-01' and published_date <= '2021-12-31')
    and category = '인문'
order by published_date asc;