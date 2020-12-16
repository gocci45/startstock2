class KtGl < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'KT (4GL)' },
    { id: 3, name: 'GL (4L)' },
    { id: 4, name: 'QT (1L)' },
    { id: 5, name: 'PT (1L)' },
    { id: 6, name: '1缶 / 16L' },
    { id: 7, name: '1缶 / 25L' },
    { id: 8, name: 'EA (非危険物)' }
  ]

  include ActiveHash::Associations
  has_many :items

  end