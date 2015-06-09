class Challenge < ActiveRecord::Base
  validates_presence_of :from, :to
end