module PersonModule
  require 'date'

  class Person
    attr_accessor :first_name, :last_name, :birth_date
    @first_name
    @last_name
    @birth_date

    def initialize
      @first_name = ""
      @last_name = ""
      @birth_date = ""
    end

    def get_person_data
      puts "Enter first name : "
      @first_name = gets.chomp

      puts "Enter last name : "
      @last_name = gets.chomp

      puts "Enter birth date : "
      @birth_date = (Date.today - Date.parse(gets.chomp)).to_i
    end

    def print_hello
      puts "Welcome  #{first_name} #{last_name}"
      puts " years : #{@birth_date / 365}"
      puts " Months : #{@birth_date / 12}"
      puts " Days : #{@birth_date}"
    end
  end
end

person = PersonModule::Person.new
person.get_person_data
person.print_hello