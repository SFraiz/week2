require_relative "spec_helper.rb"
require_relative "../lib/insecurepassword.rb"

RSpec.describe PasswordChecker do

  describe ".check_pasword" do
    it "must be longer than 7 characters" do
      expect(:password.length).to be >= 7
    end

    it "must contain at least 1 letter, 1 number and 1 symbol" do
      expect(:password).to be =~ /^[a-zA-Z0-9_]+$/
    end

    it "must contain at least 1 upercase letter and 1 lowercase letter" do
      expect(:password).to be =~ /[a-zA-Z]/
    end

    #it "must not contain neither the name or the domain of the email"

    #end
  end
end