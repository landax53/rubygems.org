# return true to ignore or false to send
Honeybadger.exception_filter do |notice|
  ActionDispatch::ExceptionWrapper.rescue_responses.key? notice[:error_class]
end

Honeybadger.configure do |config|
  config.report_data = false if Rails.env.development?
end
