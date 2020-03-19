Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, ENV['186262686218-5ti0trdpvgodlp1thr9v7e8ti8iikf3b.apps.googleusercontent.com'], ENV['1rVtAiQuThZbifQelflzT4IU']
end