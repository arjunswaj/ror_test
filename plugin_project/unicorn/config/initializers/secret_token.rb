# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Unicorn::Application.config.secret_key_base = 'e77b09155893b10432ec5c6d739a57f1e04210e336b671783e05c1e2207d03dd3166db90aee1f50498f261e71f74e2626205f98542cf9f0fd202887b7605263c'
