class Project < ApplicationRecord
  validates :name, length: {maximum: 100}, presence: true
  validates :summary, presence: true
  has_many :tasks, dependent: :destroy
end
