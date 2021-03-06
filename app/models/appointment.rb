class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def readable_date
    self.appointment_datetime.strftime("%m %d, %Y at %k:%M")
  end
end
