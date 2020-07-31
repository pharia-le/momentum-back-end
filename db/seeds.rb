# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# emails = [
#     'user_1@example.com',
#     'user_2@example.com',
#     'user_3@example.com',
#     'user_4@example.com',
#     'user_5@example.com'
# ]

# usernames = [
#     'user_1',
#     'user_2',
#     'user_3',
#     'user_4',
#     'user_5'
# ]

# names = [
#     'Name One',
#     'Name Two',
#     'Name Three',
#     'Name Four',
#     'Name Five'
# ]

habits = [
    'Meditate',
    'Exercise',
    'Drink 6 Cups of Water',
    'Stay Home'
]

# dates = [
#     Date.today,
#     Date.yesterday
# ]


# emails.each_with_index() { |email, i|
#     User.create(
#     email: email,
#     username: usernames[i],
#     name: names[i],
#     password: 'password'
#     )
# }

# User.all.each { |user|
#     habits.each_with_index() { |habit, i|
#         Habit.create(
#             name: habits[i],
#             user: user
#         )}
# }

# Habit.all.each { |habit|
#     dates.each_with_index() { |date, i|
#         Log.create(
#             date: dates[i],
#             habit: habit
#         )}
# }

User.create(
    name: "Pharia",
    username: "phariale",
    email: "pharia.le@gmail.com",
    password: "password"
)


habits.each_with_index() { |habit, i|
        Habit.create(
            name: habits[i],
            user: User.last
        )}

User.last.habits.each { |habit|
    rand(50..150).times {
        Log.create(
            date: Faker::Date.between(from: rand(150..211).days.ago, to: Date.today),
            habit: habit
        )
    }
}