class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask_question(name)
    "#{name}, what does #{@num1} + #{@num2} equal to?"
  end

  #Method to check answers
  def correct_answer?(answer) #true/false returned ?
    answer == @num1 + @num2
  end
end