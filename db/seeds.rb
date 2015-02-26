User.delete_all
User.create!(email: 'admin@keystone.com', password: '123123123', password_confirmation: '123123123', is_admin: true)
User.create!(email: 'user@keystone.com', password: '123123123', password_confirmation: '123123123', is_admin: false)
