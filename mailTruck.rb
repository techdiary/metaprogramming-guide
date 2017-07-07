load './metaid.rb'

class MailTruck
  attr_accessor :driver, :route

  @@truck = []

  def initialize driver, route
    @driver, @route = driver, route
  end

  def self.add truck
    @@truck << MailTruck
  end

  def self.company name
    meta_def :company do
      name
    end
  end
end

m = MailTruck.new("Aayush",['VidhyaDar Nagar','Malviya Nagar'])

