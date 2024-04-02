This database stores questions and answers for a quiz. Here is a description based on the structure of the table and the inserted data:

Table questions
id: Unique identifier of the question (primary key).
question: Text of the question.
correct_answer: Correct answer to the question.
incorrect_option1: First incorrect option.
incorrect_option2: Second incorrect option.
incorrect_option3: Third incorrect option.
Examples of questions:

What is the largest ocean in the world?
Correct answer: Pacific Ocean
Incorrect options: Atlantic Ocean, Indian Ocean, Arctic Ocean

What is the most populous country in the world?
Correct answer: China
Incorrect options: India, United States, Brazil

What is the capital of Brazil?
Correct answer: Brasília
Incorrect options: Rio de Janeiro, São Paulo, Salvador
... (more questions)

Each entry in the questions table represents a unique question with its correct answer and three incorrect options. This allows for the
construction of an interactive quiz where participants can choose from various answer options.
