# Add a self hosted build & deployment agent
Add a self hosted build & deployment agent: using MAC as agent
Deployment agent : create a service principal to deploy application to azure web app 

# Add new contributor to Organization
Add user in Organization as contributor
Add ssh key to the user
That user has to create a new Branch
User needs to be able to update index.html and the page has to display “user name”
Create pull requests, 
YOu approve the PR

# Resolve conflict
User (1) & new user (2)  have to make changes and push the changes into repo. resolve conflict

# Enforce PR approval requirement
Enforce policy control - main branch has to be PR approval required by Akshaya 
Create PROD Release Managers group- add yourself - Group needs to have the permission to approve
All branches that start with dev/ should also have PR approval requirements.
PR should be reviewed by at least 2 people.

# Enable email notifications for deployment status
When Prod environment deployment  success/failure - enable email notification to the team

# add workitem to PR
Policy - A sprint should exist, a work item should be linked to a pull request.