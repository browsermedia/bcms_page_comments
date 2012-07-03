# Page Comments Module for BrowserCMS

A simple comments module that can be embedded into pages to allow users to leave comments. It adds the following capabilities:

* A page comment block, which stores the user name, email, url and comment of public visitors.
* A comments portlet, which can be added to any template, and will record comments for that page.

## Installation

The Page comments module installs like most other BrowserCMS modules (http://guides.browsercms.org/installing_modules.html)

### 1. Install the module 
    
    $ rails g cms:install bcms_page_comments
    
### 2. Run the following commands
  
    $ rake db:migrate
  	$ rake db:seed

For projects with existing databases, you may need to comment out other lines in db/seeds.rb so only the blog seed data runs.

### 3. Create a Comments portlet and embed into your templates

* Open your browser to localhost:3000/cms/portlets and login 
* Click 'Add New Content', and select 'Page Comments Portlet'
* Set the name to 'Page Comments' and click save.
* Now go to Administration -> Page Templates -> Sub Page -> Edit
* Add the following line to your template, somewhere in the body (preferably after your main content area)

		<%= render_portlet "Page Comments" %>

This will render embed the portlet named "Page Comments" into any page which uses the Sub Page template. 

* Now add a new page using the "Sub Page" template and you should see the comments form. Adding a new comment will display on that page.


