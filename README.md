# Truckers

A simple Rails 6 & Ruby 3.0.0 Application to be used for practice.

### Getting Started
* Use Ruby 3.0.0
* Fork the repo from Github
* cd into `Truckers`
* `bundle install`
* `rake db:create`
* `rails db:migrate`
* `rails db:seed`
* `rails server` and the application is up and running

### Scenario

This app is to help Drivers connect to Trucks that their companies own.
Admin users are able to add, edit, and delete trucks in their company's fleet.
Driver users are able to look at their company's fleet and reserve a truck.

![alt text](https://github.com/sddanila/truckers/blob/main/app/assets/images/truckers_screen.png "Truckers Main Screen")

### Gio's Notes

#### Gems
* Formtastic for easier forms
* CanCanCan for easy access control
* Hotwire for the dynamic reserve/unreserve component in the Trucks index

#### Seeds
* Companies
  * U-Haul
  * Discount
* Users (Per Company)
  * Admin
  * Driver
* Trucks
  * 2 for U-Haul
  * 1 for Discount

#### Testing

I created controller tests for the Trucks controller, per the instructions below. The existing Company, Session, and User controller tests have also been updated as needed to account for changes I made to their routes. To run the controller tests:

Run `rails test:controllers`

#### Basic Functionality

For this exercise, I made sure that you could create a "driver" account, and sign in, and that when signed in you could sign back out - initially, sign in was working, but sign up wasn't. Once signed in, users can follow the link from the Welcome page to the list of trucks for their company. Admins can add new trucks or reserve, view, update, or delete existing ones. Drivers can only view and reserve trucks.

#### What Else Would I Do?

I stuck close to the tasks given for this exercise. Other changes I would make, if this were a long-term project, include but aren't limited to:

* Set up user creation for companies.
* Create an owner user account when someone creates a company.
* Make admin and driver registration invite-only, rather than allowing anyone to register for any company.
  * Admins can invite drivers, owners can invite both.
* Allow admins to manage drivers in order to remove any who no longer work for the company.
* Create a "reservations" model that attaches a user to a truck reservation.
  * This way, only admins or the user who made the reservation can unreserve a truck.
* Attach start and end dates to reservations.
* Create a user profile that allows users to update their information and see a list of their reservations.

### Tasks

1. Create a `Truck` model, with the following columns:
  * name
  * company_id
  * type
  * year
  * capacity
  * reserved (Bool)
  * timestamps

2. Add a `TrucksController` to manage:
  * viewing a list of trucks
  * viewing one single truck
  * creating a new truck (admin only)
  * editing an existing truck (admin only)
  * reserve a truck (driver)
  * deleting a truck (admin only)

3. Make sure the `TrucksController` is tested

4. Define two User roles: `admin` and `driver`
  * `admin` Users should be able to add, edit, and delete trucks
  * `driver` Users should be able to view and reserve trucks
