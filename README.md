# AidanKirvan_T2A2 - Lost Pet Bounty Board

<!-- A link (URL) to your deployed app (i.e. website) -->
##### Deployed App Link

https://lost-pet-bounty-board.herokuapp.com/listings

<!-- A link to your GitHub repository (repo). -->
<!-- - Ensure the repo is accessible by your Educators -->
##### Github repo link

https://github.com/teraglin/lost_pet_bounty_board

---

<!-- Identification of the problem you are trying to solve by building this particular marketplace app -->
### The Problem I am Trying to Solve

Pets can be unpredicatable. The same be said for our own habits. Sometimes it's an open window, a distraction, a lapse in thought on our end and only a moment of time to change our plans for the upcoming week.

We love our pets and we are devoted to them. So when they've have fled to escape the sound of fireworks, have been snatched up or stolen, or just made a run for it to see the outsise world... getting them back is a very tesnse and consuming process (in both a time and emotional sense).

It can take minutes to years for all, some or none of the answers and closure we desparately need to know where our beloved companions are or have wound up. All the while, after doing all you can with posters and social media posts, the waiting part is always the absolute worst. 

---

<!-- Why is it a problem that needs solving? -->
### Why It Needs Solving

Losing a pet is a stressful process. Runaway cats hide themselves under neighbouring houses, dogs can be lead away by their impulses, and birds have the entire sky above us to escape to. Sometimes the best you can do is throw out a social media post into a sea of unrelated social media posts and print off enough A3 posters to tape to poles around your block. Even still, posters on have so much space and your social circle has it's limits. Especially if it's on a platform that caters to many other services and needs.

This being the case, the best you can ask for in these moments is development, progress and action no matter how small it is. A space where people actively keep an eye on lost pets in their area and provide advice and lend an ear to those worried about their little buddies.

Waiting sucks when your options are limited. Comunication, immediacy and focus help in spades during such harrowing moments such as these. This is what this app intends to aid.

---

<!-- ### User stories for your app -->

### User Stories

**As a USER I would like**
- a profile I register for and log in/out of.
- to be able to post a bounty for my lost pet in the form of a pet profile
- to be able to add/modify/delete details on pet profile
- to be able to delete a pet profile if I want
- a profile page with posts I have made so I can find the easily
- to be able to post messages on pet profiles
- the possibility of private messages

**As an admin I would like**
- to be able to delete unsuitable posts

---

<!-- Wireframes for your app -->
### Wireframes

#### Mobile View

![image alt](./docs/wireframe_mobile_group.jpg 'wireframe mobile view')

#### Tablet View

![image alt](./docs/wireframe_tablet_group.jpg 'wireframe tablet view')

#### Desktop

![image alt](./docs/wireframe_desktop_group.jpg 'wireframe desktop view')

---

<!-- an ERD for your app -->

### Entity Relationship Database

![image alt](./docs/Lost_Pet_Bounty_Board_ERD.png 'Lost Pet Bounty Board ERD')

---

<!--
Description of your marketplace app (website) including:
- Purpose
- Functionality / features
- Sitemap
- Screenshots
- Target audience
- Tech stack (e.g. html, css, deployment, etc)
-->
### An Overview of the Application

##### Purpose

Lost Pet Bounty Board is intended to be a space where people can list pets that they have lost help other people find their pets.

##### Functionality & Features

So far, users should be able to:

- Make an account
- Add lost pets with a title, description, lost date, and an image
- *Delete*, *Create* or *Edit* their bounties
- Change status on a bounty from lost to found (and vice versa if need be).

##### Sitemap

![image alt](./docs/site_map.png 'site map')

##### Screenshots

![image alt](./docs/screen1.png 'listings/landing page')

![image alt](./docs/screen2.png 'show page')

![image alt](./docs/screen6.png 'edit bounty page')

![image alt](./docs/screen3.png 'new bounty page')

![image alt](./docs/screen4.png 'sign up page')

![image alt](./docs/screen5.png 'login page')

##### Target Audience

- People who have lost their pets

- People who have found a lost pet

- People who have pets in need of a home

- Professional/hobbyist trappers

- Those interested in helping others return lost pets to their homes

##### Tech Stack
- **Rails**: *Application framework*
    - **PostgreSQL**: *Database model*
    - **Devise**: *Authentication gem*
    - **rspec**: *Unit testing*
    - **HTML**: *Application content*
    - **Ruby**: *Application logic and programing*
    - **Tailwind**: *Third-party application styling framework*
        - **css**: *Application styling language*
        - **sass**: *Organisation css framework*
        - **JavaScript**: *Tailwind installation and functionality*
- **Cloudinary**: *Image uploading and remote storage*
- **AdobeXd**: *Wireframes*
- **Drawio**: *ERB and site mapping*


---

<!-- Explain different high-level components (abstractions) in your app -->

### Abstractions

*Lost Pet Bounty Board* uses a database model to retrieve and store information from it's users. That information can then be used for verification from information stored in the user table, or call upon listings information if search or filtering systems are included later down the line.
The Controller aids in this by filtering and organising information from the database to determine what gets sent to the view pages that the users sees and interacts with.
Navigation is made easy in the application by using Active Record to call upon a partial with a predefined navigation bar. This bar is printed to every screen.

---

<!-- Detail any third party services that your app will use -->

### Third Party Services

- **Tailwind**: Streamlined styling and inline adjustments

- **Cloudinary**: Image remote storage and uploading

- **Heroku**: Deployment and deployment testing

---

<!-- ### Describe yor projects models in terms of the relationships (active record associations) they have with each other -->

<!-- + -->

<!-- Discuss the database relations to be implemented in your application -->

### Model Relationships and Discussion

Users, Listings and Images make up the database model for the app. A Listing can only belong to one user but a user can have many Listings. An Listing can have only one image attached.

##### Users

Users contains data regarding the users who utelise the app.

To Use the application users must register for an account with an:

- email as an email string
- username as a unique string
- and a password as an encrypted string

This data is stored in the user table and functions hand in hand with *Devise*. Each user can be indetified by their user id that is represented by their position in the table. The user id is the User table's primary key. Logic in the app also uses this data to determine which functions get printed for the user and whether to hide functions on listings they have not made.

##### Listings

Listings contains all the data for posted bounties. This consists of a:

- title as a string
- description as text
- lost date as datetime
- completed as a boolean

The Listings table contains a foreign key that refers to the Users table when a bounty is created to aid with this.

##### Images

Images are handled by active storage which communicates with cloudinary. Listings does not refer to an image via a foreign key. Instead it specifies that one image is attached per listing from cloudinary via active storage.

---

<!-- Provide your database schema design -->
### Database Schema Design

##### Users
>**email**: email
**password**: encrypted string
**username**: unique string

##### Listings
>**title**: string
**description**: text
**lost_date**: datetime
**completed**: boolean
**user_id**: foreign key, integer

---

<!-- Describe the way tasks are allocated and tracked in your project -->

### Allocated and Tracked Tasks

Listings tracks which user has posted a bounty. It does this by saving the new listing param in an instace variable called `@listing` with `@listing = @listings.new(listing_params)`. then saves the current user id through the `current_user` variable provided by *Devise* with `@listing.user_id = current_user.id` and saves the reult with `@listing.save`.

Validations for input are tracked through the Listings.rb and User.rb files. More dynamic validations are done through the views by crossreferncing Devise-specific variables with data from the Listings and User tables through the Listings foreign keys.