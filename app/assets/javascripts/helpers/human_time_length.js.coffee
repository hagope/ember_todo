Ember.Handlebars.registerBoundHelper 'humanTimeLength', (amount) ->
  if amount
    '$'+parseInt(amount, 10)
