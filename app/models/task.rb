class Task < ApplicationRecord
  belongs_to :status
  belongs_to :project
  has_many :task_items
  has_many :users, through: :task_items
end
