require"pry"
class Doctor
  attr_accessor :name, :time 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(name, time)
    #binding.pry
    Appointment.new(time, name, self)
  end 
  
  def appointments
    Appointment.all.select {|apps| apps.doctor == self}
  end 
  
  def patients
    appointments.collect {|name| name.patient}
  end 
end 