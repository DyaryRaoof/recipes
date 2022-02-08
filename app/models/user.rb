class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :recipes
<<<<<<< HEAD
=======
  has_many :foods, dependent: :destroy
>>>>>>> 4c22589f0db4043362f7d893b22823048a3b174f
end
