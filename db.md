# MySQL Data Model

Discussion board data for this system is stored in MySQL. The database contains three related tables: courses, discussions, and posts.

## Access patterns

- Create a course
- List all courses
- Get a course by id
- Create a discussion for a course
- List all discussions
- List discussions for a course
- Get a discussion by id
- Add a post to a discussion
- List all posts for a discussion

## courses table


| Column        | Type         | Contraints / Notes                               |
| ------------- | ------------ | ------------------------------------------------ |
| course_id     | INT          | Primary key; unique identifier; auto-incremented |
| department    | VARCHAR(10)  | Required; department abbreviation                |
| course_number | VARCHAR(10)  | Required; course number                          |
| name          | VARCHAR(100) | Required; course name                            |




## Course constraints

- course_id is generated automatically by MySQL.
- department, course_number, and name cannot be null.
- A course can have zero or more discussions.



## discussions table


| Column        | Type         | Contraints / Notes                                  |
| ------------- | ------------ | --------------------------------------------------- |
| discussion_id | INT          | Primary key; unique identifier; auto-incremented    |
| course_id     | INT          | Required; foreign key referencing courses.course_id |
| title         | VARCHAR(200) | Required; discussion title                          |
| created_at    | DATETIME     | Required; timestamp when the discussion was created |




## Discussion constraints

- discussion_id is generated automatically by MySQL.
- course_id cannot be null and must reference an existing course.
- title cannot be null.
- A discussion belongs to one course.
- A course can have zero or more discussions.
- Discussions are ordered by created_at newest first when displayed in the discussion list.



## posts table


| Column        | Type         | Contraints / Notes                                          |
| ------------- | ------------ | ----------------------------------------------------------- |
| post_id       | INT          | Primary key; unique identifier; auto-incremented            |
| discussion_id | INT          | Required; foreign key referencing discussions.discussion_id |
| author_name   | VARCHAR(100) | Required; display name provided by the user                 |
| body          | TEXT         | Required; contents of the post                              |
| created_at    | DATETIME     | Required; timestamp when the post was created               |




## Post constraints

- post_id is generated automatically by MySQL.
- discussion_id cannot be null and must reference an existing discussion.
- author_name cannot be null.
- body cannot be null.
- A post belongs to one discussion.
- A discussion can have one or more posts.
- Posts are displayed oldest first within a discussion.



## Relationships

The tables have the following relationships:

courses
      │
      │ 1-to-many
      ▼
discussions
      │
      │ 1-to-many
      ▼
   posts