# Angle UI
This application is a test mule for migrating the Angle UI Bootstrap Admin kit to an existing or newly generated rails application (Rails 6.1.4).
The migration was based of the rails-seed folder provided by the Angle UI download.
Database setup with the rails application is using PostgreSQL.
Documentation on how to perform the migration is still **WIP**

#### Ruby version
2.7.5
#### Rails Version
6.1.4

# Database creation
1. `createuser -P -d anglemigrate`
	password for the account must be ***password***

# Project Setup
1. `bundle install`
2. `npn install`
3. `npm audit fix -force`
4. `yarn install -check-files`
5. `rails db:create`
6. `rails s`