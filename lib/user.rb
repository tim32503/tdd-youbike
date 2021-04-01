class User
  # attr_accessor :phone_no
  # attr_accessor :pwd
  # attr_accessor :status

  # def initialize(phone_no, pwd)
  #   @phone_no = phone_no
  #   @pwd = pwd
  # end
    
  # def login
  #   # p @phone_no.start_with?("09")
  #   if @phone_no != "" and @pwd != "" and @phone_no.match?(/^09[0-9]{8}$/)
  #     # @phone_no.start_with?("09") and @phone_no.length == 10
  #     @status = true
  #   else
  #     @status = false
  #   end
    
  # end

  attr_reader :member

  def initialize(options = {})
    @member = options[:member]
  end

  def member?
    @member != nil
  end
end