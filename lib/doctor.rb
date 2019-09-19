class Doctor
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  attr_accessor :name 
  
  def new_appointment(patient, date)
    new_app = Appointment.new(patient,self,date)
  end 
  
  def appointments 
    Appointment.all.map do |appoint|
      appoint.doctor == self 
    end 
  end 
  
  def patients 
   self.appointments.each do |appoint|
     appoint.patient 
   end 
  end
    
  
  
end