# -*- encoding : utf-8 -*-
class Message < ActiveRecord::Base
  attr_accessible :content
  validates :content, :presence => true
end
