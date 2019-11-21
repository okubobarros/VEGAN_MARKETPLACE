User.destroy_all
Event.destroy_all

user = User.create!(first_name: "Cesar", last_name: "User", email: "teste@teste.com", password: "123456",)

# Event.create!(user: user, description: "Enjoy an Arabian dinner while in a magic carpet", title: "Arabian Nights",
# 	address: "Arabia", type_of_meal: "Arabian", type_of_event: "dinner")
# Event.create!(user: user, description: "Burritos and Tacos at sunrise", title: "Mexican Breakfast",
# 	address: "Mexico", type_of_meal: "Mexican", type_of_event: "breakfast")
# Event.create!(user: user, description: "Celebrate Ravioli day", title: "Italian Party",
# 	address: "Italia", type_of_meal: "Italian", type_of_event: "lunch")



