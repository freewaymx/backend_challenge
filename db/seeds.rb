# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
user = User.create(
  full_name: 'IvanGodinez21',
  password: 'IvanGodinez21',
  email: 'ivano.godinez@gmail.com',
  uuid: '1234567890'
)

Product.create(
  title: 'Mocka',
  description: 'Mocka',
  price: '$50',
  created_by: user.id
)
