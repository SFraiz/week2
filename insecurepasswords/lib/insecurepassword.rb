class PasswordChecker
  attr_accessor :name, :password, :email
  def initialize(name, password, email)
    @name = name
    @password = password  
    @email = email
  end

  def check_password
    if :password.length >= 7 && :password =~ /^[a-zA-Z0-9_]+$/ && :password =~ /[a-zA-Z]/
    else
    end
  end
end