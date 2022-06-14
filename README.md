# BackEnd Challenge (Coffee Shop)
This repo will contain the backend challenge code, which is a small Coffee shop API (OPTIONAL GraphQL)

## Index
- [BackEnd Challenge (Coffee Shop)](#backend-challenge--coffee-shop-)
  * [Index](#index)
  * [Goal](#goal)
    + [Bonus points](#bonus-points)
  * [User Stories](#user-stories)
    + [Users creation](#users-creation)
    + [User's auth](#users-auth)
    + [Coffee's products](#coffees-products)
    + [Coffee's products E-Commerce](#coffees-products-e-commerce)
  * [Technical Details](#technical-details)
    + [Models](#models)
      - [User](#user)
      - [Product](#product)
      - [Invoice](#invoice)
    + [Business Logic](#business-logic)
  * [Resources](#resources)
  * [Requirements](#requirements)
  * [How to start?](#how-to-start)

## Goal
The goal of this Challenge is to create a WEB API that allow us to login, Sign In and Log Out users, create/update/list coffee products

### Bonus points
Allow to purchase coffee products (create a record of each purchase and save/update the products stock)

## User Stories
> Use this as a general guidance while you are thinking on how design the API
### Users creation
- As Admin User I want to be able to create admin users
- As Admin User I want to be able to update admin and buyer users
- As Admin User I want to be able to delete admin or buyer users
- As Non User (When you don't have an account) I want to be able to create a Buyer User
- As Buyer I want to be able to update or delete my account

### User's auth
1. As User I want to be able to login (by creating a session)
2. As User I want to be able to logout (by ending a session)

### Coffee's products
1. As User I want to be able to list all the available products
2. As User I want to be able to sort all the available products
3. As User I want to be able to filter Coffee products (by price and category)
4. As Admin User I want to be able to create, update, and delete products

### Coffee's products E-Commerce
> Bonus points!! 🦾
1. As Buyer User I want to be able to purchase some products
2. As Admin User I want to list all the purchases
3. As Admin User I want to be able to update or add stock to products

## Technical Details
> You can get an idea of the params and data that you will recive and return
### Models
> Short description of project models (You can add or remove fields as you need)
#### User
| Name      | Type   | IsRequired | FK?   | Notes                           |
|-----------|--------|------------|-------|---------------------------------|
| full_name | String | True       | False |                                 |
| password  | String | False      | False |                                 |
| email     | String | True       | False | Should be unique                |
| uuid      | Uuid   | True       | False | Autogenerated, should be unique |
| id        | Int    | True       | False | PK, should be unique            |
#### Product
| Name        | Type   | IsRequired | FK?   | Notes                           |
|-------------|--------|------------|-------|---------------------------------|
| title       | String | True       | False |                                 |
| description | String | False      | False |                                 |
| price       | double | True       | False |                                 |
| stock       | Int    | False      | False | Default 0, Optional field       |
| uuid        | Uuid   | True       | False | Autogenerated, should be unique |
| id          | Int    | True       | False | PK, should be unique            |
| created_by  | Int    | True       | True  | Should have an admin user ID    |
#### Invoice
> This is optional, just for extra points.

| Name     | Type                 | IsRequired | FK?   | Notes                                                                     |
|----------|----------------------|------------|-------|---------------------------------------------------------------------------|
| title    | String               | True       | False | Combination of date + user_fullname + random string                       |
| total    | double               | True       | False | Default 0                                                                 |
| uuid     | Uuid                 | True       | False | Autogenerated, should be unique                                           |
| id       | Int                  | True       | False | PK, should be unique                                                      |
| buyer_id | Int                  | True       | True  | Should have an buyer user ID                                              |
| products | Many - Many relation | True       | True  | This should have a *-* relations with the products (Create another table) |
### Business Logic
User model should be one one table, with a `type` field which should contain the info to know if it's admin or not. TIP: This is STI (Single Table Inheritance) in RoR.

## Resources
> You could use this posts as a reference or just investigate by your own

- [RoR (Ruby on Rails) Abstract models and STI](https://mattwal.medium.com/sti-polymorphism-and-abstract-classes-rails-a7f588668cbb)
- [RoR API only mode](https://medium.com/swlh/beginners-guide-to-building-a-rails-api-7b22aa7ec2fb) 
- [Minitest for RoR](https://medium.com/@mario_chavez/testing-rails-with-minitest-7b4f99d4fcb8)
- [Active Record Guide](https://guides.rubyonrails.org/active_record_postgresql.html)

## Requirements
- [ ] Use RoR (Ruby on Rails)
- [ ] Use device gem for auth
- [ ] Use postgreSQL as DB
- [ ] Create a postman/insomnia collection for all API calls (Bonus points if you use global variables)
- [ ] Cover all the Technical Details and User Stories
- [ ] Create a unit test (At least one success and failure per endpoint)

## How to start?
Use the following steps:
1. Create your OWN branch from `master`, you can name it as: `base/your_user_name`. Example: `base/aherredev`
2. You have to keep your changes inside of your branch, NEVER send changes to `master` branch pls.
3. I highly recommend to create 1 branch from your base branch, each time that you want to add a big feature (1 new endpoint for example). For example, if I want to create a endpoint to Log In, I should:
  - Make sure that I'm using my base branch
  - Create a new branch from my base branch, the name can be: `feat/name-of-the-feature`
  - Submit my changes to my recently created branch (`feat/name-of-the-feature`)
  - Create a PR from `feat/name-of-the-feature` to `base/your_user_name`
  - Ask for CR to @alberto or @aherredev
  - Squash and merge the PR if it's accepted

