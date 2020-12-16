class Itemname < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'エポキシプライマー' },
    { id: 3, name: 'ジンクロメートプライマー' },
    { id: 4, name: 'ホワイトエナメル' },
    { id: 5, name: 'グレーエナメル' },
    { id: 6, name: '冷蔵プライマー' },
    { id: 7, name: '冷凍プライマー' },
    { id: 8, name: '防触コンパウンド' },
    { id: 9, name: 'ウエストンクロス' },
    { id: 10, name: 'テックコート' },
    { id: 11, name: '燃料タンクコート' },
    { id: 12, name: '洗浄シンナー' },
    { id: 13, name: 'テープ' },
    { id: 14, name: 'ホワイトインク' },
    { id: 15, name: 'ブラックインク' },
    { id: 16, name: 'MEK' },
    { id: 17, name: 'トルエン' },
    { id: 18, name: 'アルミナイズド' }
  ]

  include ActiveHash::Associations
  has_many :items
  has_many :purchases

  end