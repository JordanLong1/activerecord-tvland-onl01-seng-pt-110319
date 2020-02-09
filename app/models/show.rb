class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    #returns an array of the fullnames of each actor - a show should have many actors through characters
    # self.characters.map { |c| "#{c.name} - #{c.show.name}"}
    self.actors.map {|a| "#{a.first_name} #{a.last_name}"}
end
end