class Grade < ActiveRecord::Base
  belongs_to :course
  has_many :klasses
  belongs_to :knowledge_group
end
