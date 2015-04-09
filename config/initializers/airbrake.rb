Airbrake.configure do |config|
  config.api_key = '6a5f23d433d4bde115122902a21bf8a1'
  config.host    = 'errbit.rubyforce.co'
  config.port    = 80
  config.secure  = config.port == 443
end
