require './lib/user'

class Joke
  attr_accessor :id, :question, :answer, :joke

  def initialize(joke= {})
   @id = joke.fetch(:id, 0)
   @question = joke.fetch(:question, "")
   @answer = joke.fetch(:answer, "")
  end

  def id
    @id
  end

  def question
    @question
  end

  def answer
    @answer
  end

end
