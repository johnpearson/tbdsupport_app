# Need to create an event so that we can test it, factory girl will simulate an event
Factory.define :user do |user|
  user.id               "1"
  user.name             "Willy Wonka"
  user.email            "willy@wonka.com"
  user.password         "password"
end

Factory.define :event do |event|
  event.user_id         "1"
  event.name            "I have a virus infection"
  event.content         "I have a virus infection on my PC and I need help right away."
  event.computer_info   "Dell Optiplex 780"
  event.os_type         "XP"
  event.antivirus       "none"
  event.contact         "Pleae call me"
  event.availablity     "all day long"
end