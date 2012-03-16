Factory.define :user do |f|
  f.sequence(:email) { |n| "foo#{n}@example.com" }
  f.password "secret"
end

Factory.define :section do |f|
  f.title "Home"
  f.subtitle "by Joe Doe"
  f.priority 0
end

Factory.define :post_format do |f|
  f.name "Normal"
end

Factory.define :post do |f|
  f.title "Welcome"
  f.text %{Welcome to my site...}
end

