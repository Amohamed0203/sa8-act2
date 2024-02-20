#prob1
class Laptop

    def initialize(brand, model)
        @brand = brand
        @model = model
    end

    def brand
        @brand
    end

    def model
        @model
    end
end

l1 = Laptop.new('Apple', 'MacBook Pro')
puts "Laptop: #{l1.brand} , #{l1.model}"



#prob2
class Gadget

    attr_reader :name
    attr_writer :price

    def initialize(name, price)
        @name = name
        @price = price
    end

    def price
        @price
    end
end

l1 = Gadget.new('Drill', 20)
puts "Gadget: #{l1.name} , #{l1.price}"
l1.price = 25
puts "Gadget: #{l1.name} , #{l1.price}"




#prob3
class User
    
    attr_reader :name

    def initialize(username)
        @username = username
    end

    def username=(username)
        raise ArgumentError, "Username cannot be empty" if username.to_s.strip.empty?
        @username = username
    end
end

username = User.new('name')
username.username = ''



#prob4
class Appliance

    def show_info
      puts 'This is a household appliance.'
    end
end
  
class Refrigerator < Appliance

  def r_info
    puts 'This is a fridge.'
  end
end
  
class Microwave < Appliance

  def m_info
    puts 'This is a microwave.'
  end
end
  
microwave = Microwave.new
refrigerator = Refrigerator.new
  
microwave.show_info
refrigerator.show_info
microwave.m_info
refrigerator.r_info



#prob5
module Payments
    class Invoice

        def invoice
            puts "invoice"
        end
    end

    class Receipt

        def receipt
            puts "receipt"
        end
    end
end

inv = Payments::Invoice.new
rec = Payments::Receipt.new

inv.invoice
rec.receipt



#prob6
module Drivable

    def drive
        puts "Vroom"
    end
end

class Car
    include Drivable
end

class Truck
    include Drivable
end

car = Car.new
truck = Truck.new
car.drive
truck.drive



#prob7
class Writer

    def create
        puts 'new writer'
    end
end

class Painter

    def create
        puts 'new painter'
    end
end

def showcase_talent(a)
    a.each do |r|
        r.create
    end
end

artists = [Writer.new, Writer.new, Painter.new, Painter.new]
showcase_talent(artists)



#prob8
class BankAccount

    def initialize(name)
        @name = name
        @dep = 0
        @wit = 0
    end

    def deposit
        puts 'deposited'
        log_transaction(1,0)
    end

    def withdraw
        puts 'withdraw'
        log_transaction(0,1)
    end

    private

    def log_transaction(x,y)
        @dep = @dep + x
        @wit = @wit + y 
        puts "Deposits: #{@dep}"
        puts "Withdraws: #{@wit}"
    end
end

p1 = BankAccount.new('Name')
p1.deposit
p1.withdraw



#prob9
class Camera
    attr_accessor :status

    def turn_off
        @status = 'off'
        puts "status is #{@status}"
    end

    def turn_on
        @status = 'on'
        puts "status is #{@status}"
    end
end

camera = Camera.new
camera.turn_off
camera.turn_on



#prob10
class Quiz
   [:questions_about_math, :questions_about_history].each do |m|
        define_method(m) do |n|
            puts "#{m.capitalize}, #{n}"
        end
    end
end

quiz = Quiz.new
quiz.questions_about_math('1+1?')
quiz.questions_about_history('What year was last year?')