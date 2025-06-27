# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


NOTES -

How to add a new incident using the API

curl -X POST http://localhost:3000/api/v1/incidents \
  -H "Content-Type: application/json" \
  -d '{"incident": {"description": "Unauthorized access attempt", "attack_vector": "phishing"}}'

  TODO
  1. Add JWT token for API authentication 
  2. Add Devise for UI authentication 

