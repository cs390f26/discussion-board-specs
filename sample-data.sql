INSERT INTO courses (course_id, department, course_number, name)
VALUES
    (1, 'CSCI', '390', 'Cloud Computing'),
    (2, 'CSCI', '294', 'Machine Learning');

INSERT INTO discussions (discussion_id, course_id, title, created_at)
VALUES
    (1, 1, 'Question about EC2', '2026-09-17 12:30:00'),
    (2, 2, 'Question about HW01', '2026-09-19 10:30:00');

INSERT INTO posts (post_id, discussion_id, author_name, body, created_at)
VALUES
    (1, 1, 'Connor',
     'I''m confused about how the EC2 instance fits into the architecture.',
     '2026-09-17 12:30:00'),

    (2, 1, 'Aidan',
     'I think the web server and database both run on the same EC2 instance.',
     '2026-09-17 12:50:00'),

    (3, 2, 'Connor',
     'Any suggestions for where to get the data from?',
     '2026-09-19 10:30:00');
