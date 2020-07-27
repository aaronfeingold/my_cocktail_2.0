# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app -- gems added
- [x] Use ActiveRecord for storing information in a database -- gems added
- [x] Include more than one model class (e.g. User, Post, Category) -- used corenal to generate MVCs
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) -- users have many cocktails
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) -- the cocktails belong to a user
- [x] Include user accounts with unique login attribute (username or email) -- used valdations
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying -- user can create cocktails, which are saved to their personal list which a user can then manipulate
- [x] Ensure that users can't modify content created by other users -- a user can only access the cocktails they made
- [x] Include user input validations -- rack::flash helps display errors
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits -- almost too many
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message