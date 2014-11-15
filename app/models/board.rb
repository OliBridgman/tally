class Board < ActiveRecord::Base
  belongs_to :user
  has_many :marks
  default_scope -> { order('created_at DESC') }
  validates :title, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
end
