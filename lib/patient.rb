class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
      @name
      @@all << self
    end

    def self.all
      @@all
    end

    def new_appointment(doctor, date)
      Appointment.new(self, doctor, date)
    end

    def appointments
      Appointment.all.select {|a| a.patient == self }
    end

    def doctors
      appointments.map {|a| a.doctor}
    end

end
