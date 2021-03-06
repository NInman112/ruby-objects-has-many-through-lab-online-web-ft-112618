require"pry"
class Patient
  attr_accessor :name, :date 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(name, date)
    Appointment.new(date, self, name)
  end 
  
  def appointments
    Appointment.all.select {|app| app.patient == self}
  end 
  
  def doctors
    appointments.collect {|app| app.doctor}
  end 
end 