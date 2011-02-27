class Action < ActiveRecord::Base
  belongs_to :characteristic
  has_many :sub_actions, :dependent => :destroy
  accepts_nested_attributes_for :sub_actions, :reject_if => lambda { |a| a[:sub_actions].blank? }, :allow_destroy => true     
end
