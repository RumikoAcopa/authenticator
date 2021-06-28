users = [
  { username: 'Miranda', password: 'password1' },
    { username: 'Scott', password: 'password2' },
      { username: 'Angela', password: 'password3' },
        { username: 'Flora', password: 'password4' },
          { username: 'Juan', password: 'password5' }
]

puts "Welcome to the authenticator"
25.times {print "-"}
attempts = 1
while attempts < 4
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase #get input from user at each put
  attempts += 1
end 