## plain-text instructions

```
**BASIC SETUP**

1. put the following in .railsrc

-d postgresql #Use postgres
-T #Skip Test-Unit
-B #Skip Bundle to remove bullshit
--skip-turbolinks

2. rails new YOURPROJECTNAME

3. comment out coffee-rails gem

4. include the following gems 

  ######################
  # NON RAILS-NEW GEMS #
  ######################

  # Use devise for user auth
  gem 'devise'

  # Formatters for ease of debugging
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'

  # Bootstrap sass gems
  gem 'bootstrap-sass', '~> 3.3.6'

  # Faker for seeding data
  gem 'faker' 

5. bundle install

**GENERATIONS**

6. implement user registration and authentication
  See: https://github.com/plataformatec/devise
  can specify attributes other than devise defaults by adding options to rails g devise model (see line 509)

7. for each of your resources, type rails g model YOURRESOURCE
  feel free to declare your resource's attributes in this step, e.g.
  rails g model park name:string description:text creator:references city:references
  HOWEVER when doing this, don't forget to take out the foreign_key options in the migration files for the references columns (see lines 513 and 514)

8. for each of your resources that you require a controller for, type rails g controller YOURRESOURCE
  this will create a view folder for each controller you make
  if you fuck up, you can destroy a controller and all associated files by doing rails destroy controller NAME

**ROUTES AND ACTIONS**

9. 

10. 

11. 
```

## git history

```
  503  rails new parkr
  505  cd parkr/
  506  subl .
  507  bundle install
  508  rails g devise:install
  509  rails g devise user username:string bio:text
  510  rails routes
  512  rails g model city name:string
  513  rails g model parks name:string description:text creator:references city:references
  514  rails g model review title:string body:text reviewer:references park:references
  516  rails db:create
  517  rails db:migrate
  521  git add .
  522  git init
  523  git add .
  524  git commit -m "Initial commit with models and migrations"
  525  git remote add origin https://github.com/parkyngj/parkr.git
  526  git push origin master
  527  gcob controllers-views-init
  537  rails g controller cities
  538  rails g controller parks
  539  rails g controller reviews
  541  rails g controller users
  542  git add .
  543  git commit -m "Generate controllers for users, cities, parks, reviews"
```