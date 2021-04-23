class Doctor
  attr_accessor :name, :appointments, :patient

  @@all = []

  def initialize(name)
    @name = name
    #@appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

 def appointments
    Appointment.all.select do |app|
    app.doctor == self
  end
end

def patients
  appointments.collect do |app|
    app.patient
  end
end
end
