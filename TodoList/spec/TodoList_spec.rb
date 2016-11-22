require_relative "spec_helper.rb"
require_relative "../lib/TodoList.rb"
RSpec.describe Task do
	before :each do
		@task = Task.new("content")
	end
	describe ".completed?" do
		it "check that the task is completed" do
		expect(@task.completed?).to eq(false)
		end
	end
	describe ".complete!" do
		it "check that the task isn't completed" do
		expect(@task.complete!).to eq(true)
		end
	end
	describe ".created_at" do
		it "when the task was ceated" do
			expect(@task.created_at).to eq(Time.now.round)
		end
	end
	describe ".update_content!" do
		it "will update the task's text" do
			expect(@task.update_content!).to eq("content")
		end
	end
end