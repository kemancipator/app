class Account
  
  
def initialize(name, balance=500)
        @name = name
        @balance = balance
end
    #Here the user is prompted to provide a standard password and command an action
    def choose(pw)
        
        puts "Type your password!"
        pw = gets.chomp
        if pw == "#{$pin}"
            puts "Choose between the following actions:
            - display : to display your balance
            - withdraw : to withdraw money from your account
            - deposit : to deposit money
            - end : to close account"
            action = gets.chomp
        #what action will start which method
        case action
            #starts the display_balance method           
            when "display" then display_balance
            #starts the withdraw method
            when "withdraw" then puts "How much do you want to withdraw?"
                amount = gets.chomp.to_i
                withdraw(amount)
            #starts the deposit method
            when "deposit" then puts "How much do you wish to deposit?"
                amount = gets.chomp.to_i
                deposit(amount)
            when "end" then puts "Goodbye"
            #if the user types something else he´s returned until he types one of the commands
            else return returned
        end
        # returns to prompting for a password if the wrong password was entered
        else 
            puts "Wrong password!"
            return choose(" ")
        end
    end 

    #this is the choose method without prompting a password, it only appears after having entered a password
    def returned
        puts "Choose between the following actions:
            - display : to display your balance
            - withdraw : to withdraw money from your account
            - deposit : to deposit money
            - end : to close account"

            action = gets.chomp
        
        case action

            when "display" then display_balance
            when "withdraw" then puts "How much do you want to withdraw?"
                amount = gets.chomp.to_i
                withdraw(amount)
            when "deposit" then puts "How much do you wish to deposit?"
                amount = gets.chomp.to_i
                deposit(amount)
            when "end" then puts "Goodbye"
                else return returned
        end
    end
    #called by the choose method when chosen
    def display_balance()
        puts "Balance:$#{@balance}."
        return returned
    end
    #called by the choose method when chosen, only withdraws when there´s enough in the account
    def withdraw(amount)
        if amount <= @balance
        @balance -= amount
        puts "Withdrawal successful, your new balance is:$#{@balance}"
        return returned
        else 
        puts "Your maximum withdrawal is: $#{@balance}!"
        return returned
        end
    end
    
    #called by the choose method when chosen
    def deposit(amount)
        @balance += amount
        puts "Deposit #{amount}. New Balance: $#{@balance}"
        return returned
    end
    

    #hidden pin method that contains the standard pin
    private 
    def pin
        password = $pin
    end
  
end


#This is the greeting message that creates a new account
def welcome
    puts "Welcome Sir, do you wish to create a new account?"
    answer = gets.chomp
    answer.downcase!
        if answer == "yes"
           puts "Ok, what´s your name?"
           name = gets.chomp
           @pick = Account.new(name)
           puts "You created your Account!"
           return password
        else
            return welcome
        end
end

def password
    puts "Please provide a four digit password!"
           #sets a pin globally!
           $pin = gets.chomp
           unless $pin.length != 4 
            @pick.choose(" ")
            else
            puts "The password should have four digits! Please try again!"
           return password
        end
end


#this calls the welcome method when starting the program
welcome

