class Category < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { maximum: 20 }

  has_many :tasks
end
