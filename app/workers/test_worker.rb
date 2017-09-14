class TestWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    p "=================="
    p "ENTERED THE WORKER :: + #{Time.now}"
    p "==================="
  end
end
