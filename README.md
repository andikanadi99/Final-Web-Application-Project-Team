# README

The purpose of this web application is to make the process of gathering audience evaluation of presentations easier. This application was implemented in Ruby on Rails and 
utilized
tools such us Bootstrap and Devise.

## Features
  * Authentification/login page
  * Ability for instructor/TA to create presentation event
  * Administrative interface, with views of all presentations and accesses to the feedback so instructor can assign grades
  * Presenter ability to view feedback of their own presentations
  * Ability for non-presenters to enter evaluations and look at other evaluations for a specific presentation
  * Ability for students to look at the history of their evaluations
  * Ability for all profiles to edit info of said profiles

## Ruby version
This application uses Ruby version 3.0.1 and Rails version 6.0.4.1.
* System dependencies
* 
## Gems
  * rails (version 6.0.4.1)
  * sqlite3 (version 1.4)
  * puma (version 4.1)
  * sass-rails (version 6)
  * webpacker (version 4.0)
  * turbolinks (version 5)
  * jbuilder (version 2.7)
  * bcrypt (idk if this is still tru)
  * devise (version 4.8)

## Configuration
To run the application, run the command "rails s" or "rails server" and navigate to "localhost:3000" to get to the starting page.

## Database creation
<ul>Schmas</ul>
    <li>ar_internal_metadata</li>
    <li>evalutions: contains feedback given for each presentation</li>
    <li>presentations: contains info about each presentation</li>
    <li>schema_migrations</li>
    <li>sqlite_sequence</li>
    <li>users: contains user info for signing up/loggin in</li>

## Database initialization
SQLite relatinal databse is used. development.sqlite3 is created under /db folder
## Testing

## Services (job queues, cache servers, search engines, etc.)
<ul>
   <li>Account verification.</li>
   <li>Alerts for user to see if an action is take.</li>
   <li>Exclusivity, as only osu email addresses can have an account.</li>
   <li>Modifications and orginization of presentations and evaluations</li>
   <li>Differiante ability of admins and users</li>
 </ul>


## Pages
   * All files are in app/view.
 <h3>Files in main:</h3>
 <ul>
   <li>app/view/main/_header.html.erb: The header that is consistent with all the pages of the site. Changes depend if user is logged in or not</li>
   <li>app/view/main/index.html.erb: Home page for to introduce user to the website. Contains links to login and sign-up pages</li>
 </ul>
 <h3>Files in presentation:</h3>
 <ul>
   <li>app/view/presentation/_form.html.erb: Creates heading lable for tables that contain presentations</li>
   <li>app/view/presentation/edit.html.erb: Display attributes of a presentation in a card form to be edited by admin</li>
   <li>app/view/presentation/index.html.erb: Default page that contains the list of presentations</li>
   <li>app/view/presentation/new.html.erb: Page to create a new presentation</li>
   <li>app/view/presentation/show.html.erb: Shows attributes of presentation and list of evalutions associated with the specific presentation</li>
 </ul>
  <h3>Files in layout:</h3>
  <ul>
   <li>app/view/layout/_alert.html.erb: Contains code button for alert when it pops up</li>
   <li>app/view/layout/application.html.erb: Contains code to display header and alerts in all approriate pages and situations</li>
   <li>app/view/layout/mails.html.erb: Contains code to ensure email style is valid</li>
 </ul>
  <h3>Files in evaluations:</h3>
  <ul>
   <li>app/view/evaluation/_form.html.erb: Creates heading lable for tables that contain evaluations</li>
   <li>app/view/evaluation/edit.html.erb: Display attributes of a evaluation in a card form</li>
   <li>app/view/evaluation/index.html.erb: Default page that contains the list of evaluation</li>
   <li>app/view/evaluation/new.html.erb: Page to create a new evaluation</li>
   <li>app/view/evaluation/show.html.erb: Shows attributes and list  of evaluations</li>
 </ul>
   <h3>Files in Devise:</h3>
   <ul>
    <li>app/view/devise/sessions/new.html.erb: Page for user to log in.</li>
    <li>app/view/devise/registartion/new.html.erb: Page for user to create an account.</li>
    <li>app/view/devise/registartion/edit.html.erb: Page for user to edit their own account.</li>
 </ul>
    <h3>Files in Admin:</h3>
    <ul>
    <li>app/view/admin/index.html.erb: Page for admin to look at amount of students, number of presentations and evaluations, and all users in general.</li>
 </ul>

## Design Choices
   At the sign up page for users, they are able to determine whether they are a student or professor/TA. For student, they have access to view presentations, 
   feedback, and submit feedback only. For prof/ta, they have access to create events and admin page. Admin page give the prof/ta a direct view on how each 
student did on their presentations. 
<h3>yml files (under /config/webpack )</h3>
    <li>webpacker.yml</li>
    <li>databse.yml</li>
    <li>cable.yml</li>
    <li>storage.yml</li>
    
## Styling choices
Styling included in scaffold.scss file under /stylesheets
The HTML and CSS files were validated through the W3C CSS validation service (https://jigsaw.w3.org/css-validator/validator), and a few errors are returned due to .erb file format (including ruby code).
