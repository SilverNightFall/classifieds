# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
   # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end 
end

Classifieds::Application.config.secret_key_base = 'b30cac13c1af1867faacf9246dde01b5fd57f920a3f3af93a96e29832052f44aff543847067f95f1ee56df5973e1b175bff9ad945969c335e967d385a798604c'
