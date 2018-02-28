redis_url = 'redis://127.0.0.1:6379'

Sidekiq.configure_server do |config|
  config.redis = { size: 27, url: redis_url }
  config.average_scheduled_poll_interval = 15
end

Sidekiq.configure_client do |config|
  config.redis = { size: 27, url: redis_url }
  config.average_scheduled_poll_interval = 15
end
