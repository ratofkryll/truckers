class Company < ActiveRecord::Base
  has_many :users, dependent: :destroy

  validates :email, presence: true
  validates :name, presence: true
  validates :phone_number, presence: true
end
