=begin  

Hello Jim,

By now you may recognized a pattern with the homework assignments; create a process to perform one function, wrap it in a loop with a user interface, and display the total results.

This recipe is great because it let's us sharpen our core ruby skills in the first part, practice control-flow logic in the second, and lastly architect important design choices with the appropriate data structure.

As there is a lot of ground to cover, the below will be section headers of concepts or fixes for your code.

** Git Workflow **

When working on a new project, we do our a favor by tracking our work with git. Be sure to

git init

when working on a new project to begin tracking your changes.  From there you can use your normal git workflow for each feature you complete.

** If vs Case **

Case is not really a shortcut for if/else. If else looks for exact matches where case looks for something more like "Does this data belong in this drawer." If you are looking to execute code based on a condition, if/else will be a better choice. 

** Displaying Data **

Arrays and Hashes are our go to for storing data in Ruby and displaying these in understandable format is a common necessity.  If I wanted to display a list of contents from either datatype, I am going to need to iterate through the collection and puts out each element/key-value-pair. Look into using #each and puts. We may be tempted to use displays like p, but these are not a client facing readable format, have you ever seen a website have 'Here is your cart: ['apples', 'chips', 'milk']'?

** Building Input Requirements **

This challenge asks for the user to input their equation like '2 + 3', essentially a number space operation space number layout.  Obtaining the information we need form a string is a challenge, though if we were to turn it into another datatype we are more familiar with, we could easier get the three pieces of information we need.

Take a look at the String#split method (http://ruby-doc.org/core-2.2.0/String.html#method-i-split) and see how you could leverage this within your code to get the user to input once and still get all the data you need.

** Almost There! **

This practice assessment meets most expectations.  Overall you are on the right path for success, there are just some concepts you should better familiarize yourself before continuing.  Reflect and refactor per the suggestions and this familiarity will take you further.

Keep up the hard work,

 -Emmanuel

=end





def calc(a, b, operator)
	a.send(operator, b)
end

#p calc 42, 23, :+
#p calc 16, 25, :*
#p calc 18, 9, :/
#p calc 98, 67, :-

collection = {}
puts "Enter a number or 'q' to end program"
while a = gets.chomp
  case a
  when "q"
    puts "Thanks for using the CalcIT!"
    p collection
    break
  else
  	a = a.to_i
    puts "Enter another number"
    b = gets.chomp.to_i
    puts "Enter your operator (+,-,*,/)"
    operator = gets.chomp
    calculation = calc(a, b, operator)
  end
  collection[a] = b, operator
  p "#{a} #{operator}#{b} = #{calculation}"
end