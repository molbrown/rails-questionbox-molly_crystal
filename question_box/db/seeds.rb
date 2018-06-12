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

Question.create!(
    title: 'Ruby',
    body: 'Please explain in as much detail as possible, the difference between a class and a module.',
    user_id: 1
    )
    
Question.create!(
    title: 'Objects',
    body: 'Explain what an object is when dealing with OOP. Provide some examples of objects to illustrate your point.',
    user_id: 1
    )

Question.create!(
    title: 'Getting and Setting in Ruby',
    body: 'How would you create getter and setter methods in Ruby?',
    user_id: 1
    )

Question.create!(
    title: 'Ruby Variables',
    body: 'Describe the difference between class and instance variables. How are each used in an application?',
    user_id: 1
    )

Question.create!(
    title: 'Self in Rails',
    body: 'What does *self* mean? How is this used?',
    user_id: 1
    )

Question.create!(
    title: 'What does Object Oriented Really Mean?',
    body: 'Explain how *(almost)* everything is an object in Ruby.',
    user_id: 1
    )

Question.create!(
    title: 'Ruby Tools',
    body: 'Explain the difference between a Proc and a Lambda',
    user_id: 1
    )  
    
Question.create!(
    title: 'Ruby Add-ons',
    body: 'What are Ruby gems? How do they work? Please give some examples of your favorite gems to use and what they do.',
    user_id: 1
    )    

Question.create!(
    title: 'Pipeline',
    body: 'Explain the Assest Pipeline in as much detail as possible.',
    user_id: 1
    )    

Question.create!(
    title: 'REST',
    body: 'Explain the concept of REST. Provide an example of RESTful routing and controller.',
    user_id: 1
    ) 

Question.create!(
    title: 'JS typeof bar',
    body: 'What is a potential pitfall with using ```typeof bar === "object"``` to determine if ```bar``` is an object? How can this pitfall be avoided?',
    user_id: 1
    ) 

Question.create!(
    title: 'Blocks in JS',
    body: 'What is the significance of, and reason for, wrapping the entire content of a JavaScript source file in a function block?',
    user_id: 1 
)

Question.create!(
    title: 'Strict in Javascript',
    body: 'What is the significance, and what are the benefits, of including ```use strict``` at the beginning of a JavaScript source file?',
    user_id: 1 
)