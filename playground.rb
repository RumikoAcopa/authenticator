users = [
  { username: 'Miranda', password: 'password1' },
    { username: 'Scott', password: 'password2' },
      { username: 'Angela', password: 'password3' },
        { username: 'Flora', password: 'password4' },
          { username: 'Juan', password: 'password5' }
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record| #looping through comparing
    if user_record[:username] = username && user_record[:password] == password
      return user_record #getting user object back,returns the user and exits the method.
    end
  end 
  return "Credentials were not correct" #last return is implied so technically don't need to put 'return' before credentials phrase
end 

puts "Welcome to the authenticator"
25.times {print "-"}
attempts = 1
while attempts < 4
  print "username: "
  username = gets.chomp
  print "password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase #get input from user at each loop, if input is the letter 'n' then it will quit otherwise it will keep looping.
  break if input == 'n'
  attempts += 1
end 
puts "You have exceeded the number of attempts" if attempts == 4