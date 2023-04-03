# README

* Ruby version: 2.7.3

* System dependencies: PostgreSQL

# Setup
1. run `rails db:setup`
2. run `rails s` to start the server

# General Info
* Simple Journal Management app with Entries

# Endpoints:
`Note: Journal has endpoints for both API and Front-end. For API endpoints use ones ending with '.json'`
## `Journal:`
* GET /journals or /journals.json
* GET /journals/1 or /journals/1.json
* GET /journals/new
* GET /journals/1/edit
* POST /journals or /journals.json
* PATCH/PUT /journals/1 or /journals/1.json
* DELETE /journals/1 or /journals/1.json

## `Entries:`
* GET /journals/:journal_id/entries
* GET /journals/:journal_id/entries/:id
* POST /journals/:journal_id/entries
* PATCH/PUT /journals/:journal_id/entries/:id
* DELETE /journals//:journal_id/entries/:id

## Tools to test the endpoints: `Postman` or similar

# Optional Questions:

### What's your evaluation of this exercise? Is it a reasonable and valuable skills test? Like it, hate it?
I really loved it. This exercise was very valuable and quite reasonable.

### What features and endpoints would need to be introduced to make this an actual minimally viable product for maintaining and publishing journals?
We atleast need a user sign-up and sign-in feature so users can maintain their journals.

### What concerns would need to be addressed if this MVP were publicly available?
No authentication or authorization is required so the data can be changed by anyone.

### Persist to storage via DB, etc to survive restarts
Done

### Include a simple frontend for viewing existing journals and entries
Added a simple frontend for Journals only.

