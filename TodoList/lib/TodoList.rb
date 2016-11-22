class Task
    attr_reader :content, :id, :created_at
    @@current_id = 1
    def initialize(content)
    	@complete = false
        @content = content
        @id = @@current_id
        @@current_id += 1
        @created_at = Time.now.round
    end
    def completed?
    	@complete
    end
    def complete!
    	@complete = true
    end
    def update_content!
    	@content
    end
end
task = Task.new("Buy the milk")
puts task.id
# 1
task2 = Task.new("Wash the car")
puts task2.id
#2
