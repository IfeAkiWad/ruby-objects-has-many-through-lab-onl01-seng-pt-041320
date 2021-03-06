require 'pry'

class Patient

    @@all = []

    attr_accessor :appointment, :patient, :doctor

    def initialize(name)
       @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        new_appointment = Appointment.new(date, self, doctor)

    end

    def appointments
       Appointment.all.select{|a| a.patient == self} 
    end

    def doctors
        Appointment.all.map{|a| a.doctor}
    end
end