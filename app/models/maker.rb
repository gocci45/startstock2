class Maker < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'BO' },
    { id: 3, name: 'GX' },
    { id: 4, name: 'SJ' },
    { id: 5, name: '官需機体' },
    { id: 6, name: '宇宙' }
  ]

  include ActiveHash::Associations
  has_many :items

  end