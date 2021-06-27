class Experience < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }, 
    { id: 2, name: '未経験' }, 
    { id: 3, name: 'お茶会参加経験あり' }, 
    { id: 4, name: '1年未満' }, 
    { id: 5, name: '5年未満' }, 
    { id: 6, name: '10年未満' }, 
    { id: 7, name: '10年以上' }, 
    { id: 8, name: '昔少しだけやった' }
  ]
  include ActiveHash::Associations
  has_many :users
end
