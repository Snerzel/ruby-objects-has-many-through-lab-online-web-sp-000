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
    Appointment.new(date, patient, self)


  end

  def appointments
    Appointment.all.select do |appointment|
    appointment.doctor == self
  end
end

  def patients
    appointments.collect do |appointment|
    appointment.patient
    end
  end
end
