users = [
    {username: "minhphuongitech", password: "123456"},
    {username: "tuonvyquach", password: "111111"}
]

puts "Welcome to login page!"
25.times {
    print("-")
}

def authenAccount(username, password, acc_list)
    acc_list.each do |acc|
        if acc[:username] == username && acc[:password] == password
            return acc
        end
    end
    return nil
end

tempt = 1
while tempt < 4
    puts ""
    puts "Username:"
    username = gets.chomp.downcase
    puts "Password:"
    password = gets.chomp.downcase    
    account = authenAccount(username, password, users)
    if account != nil 
        puts account
        puts "Press y to quit or any other key to continue: "
        break if gets.chomp == "y"
    else 
        puts "Login failed! Try at #{tempt+1} times" 
    end
    tempt += 1 
end


