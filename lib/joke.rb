require './lib/user'

class Joke
  attr_accessor :id, :question, :answer, :joke

  def initialize(joke= {})
   @id = joke.fetch(:id, 0)
   @question = joke.fetch(:question, "")
   @answer = joke.fetch(:answer, "")
  end

end
