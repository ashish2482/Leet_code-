# Write your MySQL query statement below
SELECT st.student_id, st.student_name, sub.subject_name, COUNT(exm.subject_name) AS attended_exams
FROM Students AS st
CROSS JOIN Subjects AS sub
LEFT JOIN Examinations AS exm
ON st.student_id = exm.student_id AND exm.subject_name = sub.subject_name
GROUP BY sub.subject_name, st.student_name, st.student_id
ORDER BY st.student_id, sub.subject_name
