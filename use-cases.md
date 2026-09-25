# Use cases

This system lets anyone create and reply to discussion board posts. There is no sign-in. Anyone who can reach the running application can use every feature below. Discussion board posts are associated with a username. Anyone can reply to any discussion and create any discussion. 

A **discussion** is a statement or question about a topic within the given class selected. After a discussion is made, anyone can reply to the given discussion, or create their own.

---

## Browse Discussions

Someone opens the application and sees what discussions are made.

The user sees a list of all discussions, the class associated, when it was created, as well as the number of replies. When no discussions are present, the list is empty.

Discussions are shown newest to oldest. 

Someone using the application has the option to open a discussion on the home page to reply to said discussion. The home page also has the ability to create a new discussion and course.

### Scenarios

- **Empty list** - There are no discussions. The list has no rows. Create discussion is still available.
- **List with data** - Each row shows the discussion, the number of replies, the class associated, time created, and an action to reply.
- **Newest first** - When more than one discussion is present, the most recent discussion will be displayed first.
- **Open reply from list** - Choosing reply on a discussion, opens that discussion's page.
- **Open class from list** - Choosing a class from the list will display all discussions from said class.

---



## Create a discussion

Someone wants to create a new discussion post.

They provide: 

- a title
- a question or statement
- a dropdown selection of a course

The system creates the new discussion and takes them to the discussion page. The new discussion is created with no replies, and a course associated.

If the person cancels, they will be returned to the home page displaying all discussions.

If the discussion is blank, or a class is not selected the creation of the discussion will fail.

### Scenarios

- **Successful creation** - Valid question or statement, title, and course. The system creates the discussion and opens it's reply page. The new discussion shows zero replies and course association.
- **Cancel** - They leave the creation of a discussion. They return to the home page with discussions listed. No new discussion is created.
- **Invalid input** - Examples: Missing question, statement, or course association. They stay on the same page and see that the input was invalid.

---



## Open a discussion to reply

Someone picks a discussion from the list to reply to it. 

They see the discussion, creator, number of replies, time created, and course associated. They see each reply in creation order. 

If the poll does not exist, they are told it was not found.

### Scenarios

- **Discussion Page** - For an existing discussion, they see the statement or question, the replies in creation order, number of replies, creator, and class associated. They have the option to reply to said discussion.
- **Unknown discussion** - The discussion id does not exist. They are told the discussion was not found.

---



## Create a post

Someone has a discussion open and chooses to reply. 

The system records their typed reply. The user then sees the reply on that discussion. 

The reply system is not anonymous. The same person may reply multiple times to the same discussion post; the system does not limit users. 

If the reply is missing or invalid, the reply fails.

### Scenarios

- **Successful reply** - They provide a valid post. The system records the post and shows the discussion with associated posts. Updating the total vote count.
- **Unknown discussion** - Voting against a missing discussion fails as not found.

---



## Create a class

Someone has the home page open and chooses to create a new class.

The system records their course department, code, and name. The user then sees the class in the drop down option in discussion creation. 

If an entry is missing or invalid, the creation fails.

### Scenarios

- **Successful class creation** - They provide valid entries for class department, code, and name. The system records the class, and shows it within a dropdown for discussion posts.
- **Invalid input** - They user provides invalid input, such as a missing class code. They stay at the creation page and see that the input is invalid.
- **Cancel** - They leave the creation of a class. They are returned to the class creation page.

