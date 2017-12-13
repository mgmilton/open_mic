require './lib/user'
require './lib/joke'
require 'csv'


class User
  attr_reader :name, :jokes

  def initialize(name, jokes= [])
    @name = name
    @jokes = jokes
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.learn(joke)
  end

  def count
    count
  end

  def perform_routine_for(user)
    self.jokes.each do |joke|
      user.learn(joke)
    end
  end

  def learn_routine(filename)
    data = []
    counter = 0
    data = CSV.read(filename, {encoding: "UTF-8",
      headers: true,
      header_converters: :symbol,
      converters: :all}) do |row|
        data << row.to_hash
      end
    until counter == 100
      @jokes << Joke.new({id: data[:id][counter], question: data[:question][counter], answer: data[:answer][counter]})
      counter+=1
    end
  end


end

casey = User.new("Casey")
casey.learn_routine('./jokes.csv')
casey.jokes.count
