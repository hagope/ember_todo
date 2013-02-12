
Ember Financial Tracker
===============================
* As a user ISBAT come to the app anytime I spend or receive money and log it so I can keep track of how much money is coming in and going out every month.

As a user ISBAT enter an expense/deposit:
----------------------------
* description
* an amount
* a category

These are the basic Restaurants, Groceries, Work Expenses,  Entertainment, Paycheques, Rent, Utilities

* Fork of https://github.com/Skalar/ember_todo


Ember TODO - Ember v.1.0.0-pre4
----------------------------

This is an example app of Ember, version 1.0.0-pre4.
We are using the new router and this app should be a demonstration
to closely represent how the final APIs will work.

The app is rather simple. It has todo objects and all todos belongs to a list.
As of writing, we are using fixtures as our backend, but I guess I'll flip over
to the REST adapter soon.

I have made some tags on this repo to mark "milestones".


Can I see it up and running?
----------------------------
Yes you can. At the moment is up and running here: http://ember-todo.skalar.no/.


What does it have examples of?
------------------------------
* Basic ember-rails setup.
* Some transaction uses.
* Twitter Bootstrap and Ember.
* Simple views binding to DOM events triggering controller actions.
* Validations.
* Undo feature like Gmail when you delete lists and tasks.


What is missing?
----------------
* Complete-all-button, or other bulk-update things.
* JS tests.
* Sort todo list by dragging rows.
* Drag and drop tasks from one list to another.
* .. + more things to learn Ember :-)


How to get started
------------------

```
..clone..
bundle install
rake db:create
rake db:migrate
rake db:seed
rails s
```
