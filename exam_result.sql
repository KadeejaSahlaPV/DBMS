CREATE TABLE exam_result (rollno INT,avg_score float,Grade VARCHAR(10));
insert into exam_result VALUES(1, 95,' '), (2, 80,' '), (3, 70,' '), (4, 85,' '),(5, 60,' '),(6, 92,' '), (7, 45,' '),(8, 78,' '),(9, 88,' '), (10, 65,' ');
select * from exam_result;
DO $$
BEGIN
    UPDATE exam_result
    SET Grade = CASE
        WHEN avg_score BETWEEN 90 AND 100 THEN 'A'
        WHEN avg_score BETWEEN 75 AND 89 THEN 'B'
        WHEN avg_score BETWEEN 60 AND 74 THEN 'C'
        WHEN avg_score BETWEEN 50 AND 59 THEN 'D'
        ELSE 'E'
    END;
END $$;
SELECT * FROM exam_result;
