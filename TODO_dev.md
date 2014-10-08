# Development TODOs
## Compiled by Leo Rudberg (LOZORD) in October 2014

During Design Like Mad, I set up all of the databases that the project will be using.
Relationships among databases still need to be set up:
* Volunteer
  - Fields
    * String name
    * Interest interest
    * TimeStamp bday_ts
    * Event events
    * NonProfit nonprofits
    * Boolean is_approved
    * Boolean is_admin
    * String email
    * Subgroup subgroups
  - TODOs
    * Events relation
    * Nonprofits relation
    * Subgroups relation
    * Passwords and login

* Interest
  - Fields
    * * Polymorphic associations *
    * Boolean farming
    * Boolean fitness
    * Boolean family
    * Boolean civic
    * Boolean arts
    * Boolean tech
    * Boolean education
  * If you ever need to add a new interest type, just run a migration *
  -TODOs
    * relations to others

* Event
  - Fields
