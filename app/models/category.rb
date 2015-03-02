class Category < ActiveRecord::Base

  has_many :categorizations
  has_many :kittens, through: :categorizations
  validates :name, presence: true, uniqueness: {case_sensitive: false}
end
