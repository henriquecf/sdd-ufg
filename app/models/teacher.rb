class Teacher < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true

  def coordinator?
    false
  end
end
