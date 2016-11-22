require_relative "spec_helper.rb"
require_relative "../lib/Lexiconomitron.rb"
RSpec.describe do
	describe Lexiconomitron do 
	  describe "#eat_t" do
	    it "removes every letter t from the input" do
	      @lexi = Lexiconomitron.new
	      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
	    end
	  end
	end
end