# Development TODOs
### Compiled by Leo Rudberg (LOZORD) in October 2014

During Design Like Mad, I set up all of the databases that the project will be using.
Relationships among databases still need to be set up:
* Volunteer
  - Fields
    * String name
    * Interest interest
    * TimeStamp bday_ts
    * Event events (0 or more)
    * NonProfit nonprofits (0 or more)
    * Boolean is_approved
    * Boolean is_admin
    * String email
    * Subgroup subgroups (0 or more)
  - TODOs
    * Events relation
    * Nonprofits relation
    * Subgroups relation
    * Passwords and login (**secure!**)
    * Add picture, bio, etc.

* Interest
  - Fields
    * _Polymorphic associations_
    * Boolean farming
    * Boolean fitness
    * Boolean family
    * Boolean civic
    * Boolean arts
    * Boolean tech
    * Boolean education
    * _If you ever need to add a new interest type, just run a migration_
  - TODOs
    * relations to others

* Event
  - Fields
    * String name
    * String location
    * TimeStamp date_ts
    * Volunteer volunteers (1 or more)
    * Integer num_volunteers_needed
    * NonProfit nonprofit
    * Interest interest
  - TODOs
    * Volunteers relation
    * Nonprofit relation
    * Interest relation

* NonProfit
  - Fields
    * String name
    * Interest interest
    * Event events (0 or more)
    * Volunteer volunteers (1 or more)
    * Volunteer leader
  - TODOs
    * Interest relation
    * Events relation
    * Volunteer relation (volunteers and leader)

* Subgroup
  - Fields
    * String name
    * Volunteer volunteers (0 or more)
    * Interest interest
  - TODOs
    * Volunteers relation
    * Interest relation

Other than that, basic pathing/routing needs to be done, as well as customizing the controllers if necessary

### Other things requested by Christina and Karen
* Calendar page that shows:
  - RSVPd events
  - Invited events (i.e. user has not given response yet)
  - Suggested events (based on interest, subgroups, and nonprofits followed by user/volunteer)
  - ???

* Mobile compatability?
