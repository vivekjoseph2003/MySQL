INSERT INTO students1 VALUES(1, 'Alice', 'Web Development', 5000, 'Inactive'),
(2, 'Bob', 'Data Science', 7000, 'Inactive'),
(3, 'Charlie', 'UI/UX Design', 4000, 'Active');

SELECT * FROM students1 WHERE fees_paid>5000;
UPDATE students1 SET status='Active' WHERE course='Web Development';
UPDATE students1 SET fees_paid=fees_paid+1000 WHERE course='Data Science';
UPDATE students1 SET status='Inactive',fees_paid=fees_paid-500 WHERE id=3;
DELETE FROM students1 WHERE id=2;
DELETE FROM students1 WHERE status='Inactive';
