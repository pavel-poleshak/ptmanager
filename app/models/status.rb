class Status < ApplicationRecord
  before_destroy :ensure_not_referenced_by_any_task
  has_many :tasks
  validates :title, presence: true, uniqueness: { case_sensitive: false }

private
  def ensure_not_referenced_by_any_task
    if tasks.any?
      errors.add(:base, "This status can't be deleted because it is present in tasks")
      throw :abort
    end
  end
end
