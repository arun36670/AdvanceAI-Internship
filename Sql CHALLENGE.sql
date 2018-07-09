SELECT submissions.submission_date, submissions.member_id, members.name,  submissions.score 
FROM submissions 
JOIN members
ON submissions.member_id = members.id
WHERE score = (SELECT max(score) FROM submissions
WHERE member_id IN (
SELECT member_id
from submissions
where submission_date='2018-01-01'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-02'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-03'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-04'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-05'

)
AND submission_date = '2018-01-01')

AND member_id IN (
SELECT member_id
from submissions
where submission_date='2018-01-01'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-02'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-03'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-04'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-05'
)

union

SELECT submissions.submission_date, submissions.member_id, members.name,  submissions.score 
FROM submissions 
JOIN members
ON submissions.member_id = members.id
WHERE score = (SELECT max(score) FROM submissions
WHERE member_id IN (
SELECT member_id
from submissions
where submission_date='2018-01-01'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-02'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-03'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-04'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-05'

)
AND submission_date = '2018-01-02')

AND member_id IN (
SELECT member_id
from submissions
where submission_date='2018-01-01'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-02'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-03'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-04'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-05'
)

union

SELECT submissions.submission_date, submissions.member_id, members.name,  submissions.score 
FROM submissions 
JOIN members
ON submissions.member_id = members.id
WHERE score = (SELECT max(score) FROM submissions
WHERE member_id IN (
SELECT member_id
from submissions
where submission_date='2018-01-01'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-02'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-03'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-04'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-05'

)
AND submission_date = '2018-01-03')

AND member_id IN (
SELECT member_id
from submissions
where submission_date='2018-01-01'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-02'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-03'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-04'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-05'
)

union

SELECT submissions.submission_date, submissions.member_id, members.name,  submissions.score 
FROM submissions 
JOIN members
ON submissions.member_id = members.id
WHERE score = (SELECT max(score) FROM submissions
WHERE member_id IN (
SELECT member_id
from submissions
where submission_date='2018-01-01'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-02'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-03'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-04'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-05'

)
AND submission_date = '2018-01-04')

AND member_id IN (
SELECT member_id
from submissions
where submission_date='2018-01-01'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-02'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-03'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-04'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-05'
)

union

SELECT submissions.submission_date, submissions.member_id, members.name,  submissions.score 
FROM submissions 
JOIN members
ON submissions.member_id = members.id
WHERE score = (SELECT max(score) FROM submissions
WHERE member_id IN (
SELECT member_id
from submissions
where submission_date='2018-01-01'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-02'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-03'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-04'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-05'

)
AND submission_date = '2018-01-05')

AND member_id IN (
SELECT member_id
from submissions
where submission_date='2018-01-01'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-02'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-03'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-04'
intersect
SELECT member_id
from submissions
where submission_date='2018-01-05'
)
;

