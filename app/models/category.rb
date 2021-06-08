class Category < ApplicationRecord
  validates :title, presence: true, uniqueness: {scope: :user}, length: { maximum: 10 }

  belongs_to :user
  has_many :tasks, dependent: :destroy
end
