require './lib/user'
require './lib/joke'

class User
  attr_reader :name, :jokes

  def initialize(name, jokes= [])
    @name = name
    @jokes = jokes
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(name, joke)
    name.jokes << joke
  end

  def count
    count
  end

  def perform_routine_for(name)
    self.jokes.each do |joke|
      name.jokes << joke
    end
  end

end

joke_1 = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})

joke_2 = Joke.new({id: 2, question: "How do you keep a lion from charging?", answer: "Take away its credit cards."})

ilana = User.new("Ilana")
josh = User.new("Josh")
ilana.learn(joke_1)
ilana.learn(joke_2)
ilana.perform_routine_for(josh)
p josh.jokes.count
