class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '第一石油類' },
    { id: 3, name: '第二石油類' },
    { id: 4, name: '第三石油類' },
    { id: 5, name: '非危険物' }
  ]

  include ActiveHash::Associations
  has_many :items

  end