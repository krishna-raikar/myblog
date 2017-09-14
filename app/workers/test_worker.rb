class TestWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    p "=================="
    p "ENTERED THE WORKER :: + #{Time.now}"
    Post.create(name: "test", description: "inside worker")
    p "==================="
  end
end
