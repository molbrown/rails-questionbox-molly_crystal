# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

User.create!(
    username: 'Seed',
    password_digest: '$2a$10$Zm/CMChzqIxyrMGakpIMTedi2J93dhz6YUXknE9o3Cw8.YjapkgDe',
    email_address: 'email@email.com'
)

Question.create!(
    title: 'OOP',
    body: 'Tell me what you know about Object Oriented Programming.    
    *Follow-up question:* Are there any other styles of programming?',
    user_id: 1
    )

Question.create!(
    title: 'Tough Question',
    body: 'What is *duck-typing*?',
    user_id: 1
    )

Question.create!(
    title: 'Good Vocabulary',
    body: 'What is *polymorphism*?',
    user_id: 1
    )

Question.create!(
    title: 'MVC',
    body: 'Describe the M-V-C programming design pattern.   
    *Tip-* Can you draw it out to help you describe it?',
    user_id: 1
    )

Question.create!(
    title: 'Workflow',
    body: 'Can you describe your workflow when you create a web page or web app?',
    user_id: 1
    )

Question.create!(
    title: 'Bugs',
    body: 'How do you approach finding a bug?',
    user_id: 1
    )

Question.create!(
    title: 'RESTful Web Service',
    body: 'Can you explain the purpose of each of the HTTP request types when using a RESTful web service?',
    user_id: 1
    )

Question.create!(
    title: 'Do you stay current?',
    body: 'What industry sites and blogs do you read regularly?    
    *Share links in your answer so other readers can get some good reading!*',
    user_id: 1
    )

Question.create!(
    title: 'Toolbox',
    body: 'What are a few of your favorite development tools and why?',
    user_id: 1
    )

Question.create!(
    title: 'Troubleshoot',
    body: 'I just pulled up the website you built and the browser is displaying a blank page. Walk me through the steps you would take to troubleshoot the problem.',
    user_id: 1
    )



Question.create!(
    title: 'String Sum',
    body: 'Create a function to calculate a sum from a string of numbers, separated by commas.   
    *Additional features:*
    - An empty string will return 0.
    - Allow the function to handle new lines between numbers instead of commas. *Example: "1\n2,4" (will equal 7).*
    - Calling your function with a negative number in the string will print the output "negatives not allowed:" and the negative that was passed. If there are multiple negatives, show all of them in the message.',
    user_id: 1
    )

Question.create!(
    title: 'Array Matching',
    body: 'Create a function that takes two arrays and returns a new array that contains the elements found in both arrays.   
    The order they are in does not matter, but no duplicates should be in the returned array, even if they were in the input.',
    user_id: 1
    )

Question.create!(
    title: 'Selection Sort',
    body: 'Create a function that takes an array of numbers and returns a sorted array.',
    user_id: 1
    )

Question.create!(
    title: 'Word frequency',
    body: 'How would you go about creating a program to calculate the frequency of words in a text file?',
    user_id: 1
    )

Question.create!(
    title: 'Add One To Number',
    body: 'Given a non-negative number represented as an array of digits,    
    add 1 to the number ( increment the number represented by the digits ).    
    The digits are stored such that the most significant digit is at the head of the list.    
    Example:    
    If the vector has [1, 2, 3]    
    the returned vector should be [1, 2, 4]    
    as 123 + 1 = 124.',
    user_id: 1
    )
