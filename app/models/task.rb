class Task < ApplicationRecord
  belongs_to :status
  belongs_to :project
  has_many :task_items
  has_many :users, through: :task_items, dependent: :destroy
  validates :title, presence: true, uniqueness: { scope: :project }
end
