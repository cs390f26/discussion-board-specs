# Sample data

The sample data below is used to demonstrate the happy path use cases for the discussion board. It includes multiple courses, discussions, and posts that populate the discussion list and discussion details screens.

The machine-readable version of this data is provided in sample-data.sql. The SQL file can be used to insert the sample data into the MySQL database.

## Courses

### Course 1

```
course_id: 1 
department: CSCI
course_number: 390 
name: Cloud Computing
```

### Course 2

```
course_id: 2
department: CSCI
course_number: 294 
name: Machine Learning
```

## Discussions



### Discussion 1

```
discussion_id: 1 
course_id: 1 
title: Question about EC2 
created_at: 2026-09-17 12:30:00
```



### Discussion 2

```
discussion_id: 2
course_id: 2 
title: Question about HW01 
created_at: 2026-09-19 10:30:00
```



## Posts



### Post 1

```
post_id: 1 
discussion_id: 1 
author_name: Connor 
body: I'm confused about how the EC2 instance fits into the architecture. 
created_at: 2026-09-17 12:30:00
```



### Post 2

```
post_id: 2
discussion_id: 1 
author_name: Aidan
body: I think the web server and database both run on the same EC2 instance.
created_at: 2026-09-17 12:50:00
```



### Post 3

```
post_id: 3
discussion_id: 2 
author_name: Connor
body: Any suggestions for where to get the data from?
created_at: 2026-09-19 10:30:00
```

