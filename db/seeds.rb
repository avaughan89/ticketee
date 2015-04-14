admin_user = User.create(email: "admin@example.com",
                         name: "admin",
                         password: "password",
                         password_confirmation: "password",
                         admin: true)

Project.create(name: "Ticketee Beta")

User.create(email: "username@example.com",
                         name: "username",
                         password: "hunter2",
                         password_confirmation: "hunter2",
                         admin: true)