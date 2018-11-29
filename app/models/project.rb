class Project < ApplicationRecord
  validates :name, length: {maximum: 100}, presence: true, uniqueness: { case_sensitive: false }
  validates :summary, presence: true
  has_many :tasks, dependent: :destroy
end
