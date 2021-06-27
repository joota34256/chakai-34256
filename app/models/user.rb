class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :experience
  
  with_options presence: true do
    validates :nickname
    validates :birthday
    validates :password
    validates :email
    validates :address
    validates :name_kanji, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
    validates :name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }

    with_options numericality: { other_than: 1 } do
      validates :prefecture_id
      validates :experience_id
    end
  end

end
