list_attributes = [
  {
    name: 'Restaurants'
  },
  {
    name: 'Groceries'
  },
  {
    name: 'Expenses'
  },
  {
    name: 'Entertainment'
  },
  {
    name: 'Paycheques'
  },

  {
    name: 'Rent'
  },
  {
    name: 'Utilities'
  }
]

task_attributes = {
  'Restaurants' => [
    {
      name: 'What the Pho',
      minutes_estimated_to_complete: 43.34
    }
  ],
  'Groceries' => [
    {
      name: 'Overpriced fruit from Whole Foods',
      minutes_estimated_to_complete: 199.34
    }
  ], 
  'Utilities' => [
    {
      name: 'Water and such',
      minutes_estimated_to_complete: 23.31
    }
  ],
  'Rent' => [
    {
      name: 'Overpriced Silicon Valley Apartment',
      minutes_estimated_to_complete: 2999
    }
  ],

  'Expenses' => [
    {
      name: 'Automation software',
      minutes_estimated_to_complete: 70.99
    },

    {
      name: 'Lunch with the Bobs at Chotchkies',
      minutes_estimated_to_complete: 34.43
    }
  ]
}




list_attributes.each do |attributes|
  List.where(name: attributes[:name]).first_or_create! attributes
end

task_attributes.each_pair do |list_name, tasks|
  list = List.find_by_name!(list_name)

  tasks.each do |attributes|
    Task.create! attributes.merge(list: list)
  end
end
