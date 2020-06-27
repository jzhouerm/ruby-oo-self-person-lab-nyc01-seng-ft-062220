
require 'pry'
class Person
    attr_reader :name
    attr_accessor
    attr_writer :hygiene
    @@everyone = []
      def initialize(name)
            @name = name
            @bank_account = 25
            @happiness = 8
            @hygiene = 8 
            @@everyone << name
        end

        def bank_account #reader
            @bank_account
        end

        def bank_account=(add_money) #writer
            @bank_account += add_money
        end

        def happiness #reader: min=0 max=10
            @happiness
        end

        def happiness=(add_happiness) #writer
            @happiness = add_happiness
            if @happiness <=10 && @happiness>=0
                @add_happiness
            elsif @happiness > 10
                @happiness = 10
            elsif @happiness < 0
                @happiness = 0 
            end
            @happiness
        end

        def hygiene #reader: min=0 max=10
            @hygiene
            if @hygiene <=10 && @hygiene>=0
                @hygiene
            elsif @hygiene > 10
                @hygiene = 10
            elsif @hygiene < 0
                @hygiene = 0 
            end
            @hygiene
        end

        def hygiene=(overwritehygienepoints) #hygiene can be overwritten
            @hygiene = overwritehygienepoints
        end

       def clean? #reader: >7 = true, <7 = false
        if @hygiene > 7
            true
        else 
            false
        end
    end
    
    def happy? #reader: >7 = true, <7 = false
        if @happiness > 7
            true
        else 
            false
        end
    end
    
    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end
    
    def take_bath #reader
        self.hygiene = @hygiene + 4 #take_bath.hygiene >> this inst. meth. is calling hygiene method
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out #reader
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        return "♪ another one bites the dust ♫"
    end
    def call_friend(callee) #reader
        #other_person must exist, otherwise "friend"
        #adds 3 points to both persons
            callee.happiness += 3 #felix.happiness
            self.happiness = @happiness + 3
            return "Hi #{callee.name}! It's #{@name}. How are you?" #felix.name
    end
    #DONE   
    def start_conversation(friend, topic)
        if topic == 'politics'
            friend.happiness -= 2 #felix.happiness
            self.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            friend.happiness += 1 #felix.happiness
            self.happiness +=1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
            end
        end
    end




