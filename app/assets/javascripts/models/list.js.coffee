Todo.List = DS.Model.extend
  tasks: DS.hasMany 'Todo.Task'

  name: DS.attr 'string'

  minutesLeftToComplete: Ember.computed ->
    total = @get('tasks').getEach('minutesLeftToComplete').reduce ((sum, min) -> sum + min), 0
    if total is 0 then null else total
  .property('tasks.@each.minutesLeftToComplete')
