class FooJob < ApplicationJob
  queue_as :default

  def perform(book, name)
    # Do something later
    puts "====== JOB here =========",book.inspect
    puts "====== JOB here =========",name.inspect
    CheckStatusChannel.broadcast_to(name, {data: {text: name + "::" + book.title }})
  end
end
