class Souko < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '大物塗装' },
    { id: 3, name: '前処理' },
    { id: 4, name: '主翼用' },
    { id: 5, name: '組立用' },
    { id: 6, name: 'コンポジット' },
    { id: 7, name: '小物塗装' },
    { id: 8, name: '熱処理' },
    { id: 9, name: 'チューブ加工' }
  ]

  include ActiveHash::Associations
  has_many :items

  end