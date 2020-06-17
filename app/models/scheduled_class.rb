class ScheduledClass < ApplicationRecord
  belongs_to :member, optional: true
  belongs_to :gym_class
  belongs_to :gym

  validates :time, presence: true
  validates_uniqueness_of :time, scope: [:gym_class_id, :member_id], message: "Time already taken and/or member is already in this class"
  
end

#scheduled_class_params[:member_id].blank?