require './lib/user'

class Joke
  attr_accessor :id, :question, :answer, :joke

  def initialize(joke= {})
   @id = joke.fetch(:id, 0)
   @question = joke.fetch(:question, "")
   @answer = joke.fetch(:answer, "")
  end

end

###### below is the class code demo
#
# class Joke
#   attr_accessor :id, :questions, :answer
#
#   def initialize(joke)
#     @id = joke[:id]
#     @question = joke[:question]
#     @answer = joke[:answer]
#   end
#
# end
