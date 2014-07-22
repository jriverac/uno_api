class Message < ActiveRecord::Base
  attr_accessible :body, :subject, :to
  validates_presence_of :to, :body
end
