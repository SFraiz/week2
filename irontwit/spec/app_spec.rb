# spec/app_spec.rb
require File.expand_path '../spec_helper.rb', __FILE__

describe 'The Irontwit' do
	context "homepage" do
		before(:each) {get("/")}

		it "renders the homepage" do
  			get("/")
  			expect(last_response).to be_ok
 		end

 		it "has a form" do
 			expect(last_response.body).to include("form")
 		end
 	end

 context "logout" do

		it "should set the session as logget out" do
			get("/logout")
			expect(session[:logged_in]).to be_falsey
		end
 	end
end