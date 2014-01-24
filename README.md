Rails For Cegeca
================

This should be the state of the application at the end of the talk.

Want to try if this works for you?
----------------------------------
Follow these steps:
- Install ruby on your box
- Make sure you have this branch locally
- Navigate to the root of this branch
- Bundle the gems: ```bundle install``
- Build your development database: ```rake db:migrate```
- Build your test database: ```rake db:test:prepare```
- Run the specs: ```rspec```
- Verify autotest can run: ```autotest```
- Stop autotest: ```ctrl + C```
- Populate the database with sample data: ```rake db:seed``` (script can be found in db/seeds.rb)
- Run the application: ```rails server```
- Go to go to ```http://localhost:3000```
