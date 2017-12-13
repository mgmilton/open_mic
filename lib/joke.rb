class Joke
  attr_accessor :id, :question, :answer

  def initialize(name = {})
   @id = name.fetch(:id, 1)
   @question = name.fetch(:question, "" )
   @answer = name.fetch(:answer, "")
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

joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})

p joke.id
p joke.question
p joke.answer
