class MathQuestions
  def self.generate_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    return { question: "#{num1} + #{num2}?", answer: num1 + num2 }
  end
end
