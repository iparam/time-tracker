require 'machinist/active_record'
Machinist.configure do |config|
  config.cache_objects = false
end
# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

