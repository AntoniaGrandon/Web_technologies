# Participants

* Antonia Grandon 21.120.661-6
* Sofía Jara 21.527.113-7
* Ignacio Wiechert  21.030.272-7

**Test user credentials:**
  * email: "sofia_jara@example.com", password: "sofia123"
  * email: "ignacio_wiechert@example.com", password: "ignacio123"
  * email: "antonia_grandon@example.com", password: "antonia123"

**Description of roles and permissions:**

1. Administrators
Administrators have complete control over the application. They can do absolutely everything: create, read, edit, and delete any data on any model (Challenges, Progresses, Users, etc.).

2. Registered Users
Users who are logged in have more restricted permissions, generally limited to their own data and basic interaction with challenges:
Challenges: They can view and create any challenge. They can only edit and delete the challenges they themselves created.
Progress: They can create new progress entries. They can only view, edit, and delete the progress entries they themselves created.
Profile (User): They can update (edit) their own profile information.

3. Guests
Users who are not logged in cannot interact with or create data.
Challenges: They can only view (read) the existing challenges.
Other Resources: They have no access to create, modify, or view Progress or User information

