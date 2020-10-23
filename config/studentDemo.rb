class Student
    attr_accessor :last_name, :first_name, :age
    attr_reader :full_name

    #declare fields
    @last_name
    @first_name
    @age
    @full_name


    def initialize(last_name, first_name, age)
        @last_name = last_name
        @first_name = first_name
        @age = age
    end

    def full_name
        "#{@last_name} #{@first_name}"
    end

    ###Khong can khai bao cho nay khi dung attr_accessor
    # #setter
    # def first_name=(first_name)
    #     @first_name = first_name
    # end
    # def last_name=(last_name)
    #     @last_name = last_name
    # end

    # #getter
    # def first_name
    #     @first_name
    # end
    # def last_name
    #     @last_name
    # end
    ###Khong can khai bao cho nay khi dung attr_accessor

    def show_name()
        puts "#{@first_name} #{@last_name}" 
    end
end

st = Student.new("Nguyen", "Phuong", 30)
# st.first_name = "Phuong"
# st.last_name = "Nguyen"
# st.full_name = "abc" #khong gan gia tri duoc vi attr_reader

puts st.first_name
puts st.last_name
puts st.age
puts st.full_name

# st.show_name