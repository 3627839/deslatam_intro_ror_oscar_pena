class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pins

    def avatar
      type = ['men', 'women'].sample
      number = (1..9).to_a.sample
    "https://randomuser.me/api/portraits/#{type}/#{number}.jpg"
    end
end
