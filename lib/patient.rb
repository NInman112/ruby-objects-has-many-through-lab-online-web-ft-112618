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
    self.new(name, self, time)
  end 
  
  def appointments
    Appointment.all.select {|app| app.patient == self}
  end 
  
  def doctors
    appointment.collect {|app| app.doctor}
  end 
end 