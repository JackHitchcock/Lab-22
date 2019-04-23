OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '662019028434-0tmieqi67qr50iibb7n4sd4c5fbcodqi.apps.googleusercontent.comd', 'HwYj1M0aZiLf-FA_up-EfORP', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end