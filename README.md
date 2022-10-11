# README

This was created to demonstrate a bug I am seeing in my app with config cat.

# Setup
To set up, have Postgres running, then run:
1. copy the .env.example file into a .env file
2. Change the CONFIG_CAT_KEY to equal a valid config cat key
3. run the command `bundle install` from the command line
4. run the command `rake db:create`
5. run the command `rake db:migrate`
6. run the command `rake db:seed`
7. run the command `rails server` to start the server
8. You can navigate to http://localhost:3000 to view the app
(Note: the config cat log can be found at /log/config_cat.txt)

# Recreating the problem

On you have navigated to http://localhost:3000 ,
You can see a list of users with their config cat values.
All users are viewing the values of the config cat key "BUG_TRACKING"

You can use config cat to set the values
should.be.false@xplortechnologies.com to false

should.be.true@xplortechnologies.com to true

'change.after.app.starts@xplortechnologies.com' to be false,
then after the server is running, change it to true
(this change will not be picked up, demonstrating the bug)
