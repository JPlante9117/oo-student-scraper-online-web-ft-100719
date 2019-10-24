require_relative './scraper.rb'

class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
<<<<<<< HEAD
    student_hash.each {|key, val| self.send("#{key}=", val)}
=======
    @name = student_hash[:name]
    @location = student_hash[:location]
    @twitter = student_hash[:twitter]
    @linkedin = student_hash[:linkedin]
    @github = student_hash[:github]
    @blog = student_hash[:blog]
    @profile_quote = student_hash[:profile_quote]
    @bio = student_hash[:bio]
    @profile_url = student_hash[:profile_url]
>>>>>>> 6430abc6419c158869ce0b4a22302f03146fdca1
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do |student_info|
      student = Student.new(student_info)
    end
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each { |key, value| self.send("#{key}=", value) }
    #binding.pry
    self
  end

  def self.all
    @@all
  end
end

