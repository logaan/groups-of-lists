class Group < ActiveRecord::Base
  has_and_belongs_to_many :tasks

  validates_presence_of :name
end
