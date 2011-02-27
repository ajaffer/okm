class Characteristic < ActiveRecord::Base
  has_many :actions, :dependent => :destroy
  accepts_nested_attributes_for :actions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true   
end
