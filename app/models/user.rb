class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role
  before_validation :set_role
  has_many :products


  def set_role
    self.role_id = Role.find_by(name: "customer").id
  end
end
