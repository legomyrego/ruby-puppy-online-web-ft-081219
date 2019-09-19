# Add your code here
require 'pry'

class Dog

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save

  end

  def self.all
      @@all
  end

  def self.print_all

      @@all.each do |dogname|
      puts dogname.name
      binding.pry
    end

  end

  def save
    @@all << self
  end

  def self.clear_all
      @@all.clear
  end

end
