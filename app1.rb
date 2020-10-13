class Book

    attr_reader :last_person
    attr_accessor :hh 

    def initialize
        @hh = {}
        @last_person = ""
    end

    def add_person options
        puts 'Already exist' if @hh[options[:name]]
        @hh[options[:name]] = options[:age]
        @last_person = options[:name]
    end
 
    def show_all
        @hh.keys.each do |key|
            age = @hh[key]
            puts "Name #{key}, age: #{age}"
        end        
    end

    def aa
        @hh
    end

    def last_person
        @last_person
    end
end

b = Book.new
b.add_person :name => 'Walt',  :age => 50
b.add_person :name => 'Lidia', :age => 42
b.add_person :name => 'Jessie',  :age => 25
b.show_all

puts "Last person: #{b.last_person}"