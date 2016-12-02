=begin
	
describe TodoList do
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(list.get_item(0)).to eq "do the dishes"
  end
end
	
=end
class TodoList
	def initialize(tasks)
		@tasks = tasks
		#@tasks = []
	end

	#define method 'get_items'
	def get_items()
		@tasks
	end

	def add_item(task)
		@tasks << task
	end

	def delete_item(task)
		@tasks.delete(task)
	end

	def get_item(idx)
		@tasks[idx]
	end

end