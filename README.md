# COding
A shared coding platform using the Google Drive API

## TO-DO
**Due 3/6 at midnight**
Create basic HTML flow and Cucumber stories.
1. Determine list of features
2. Determine page flow

**Additional:**
1. Explore Google Drive API
    1. Check for synchronization
    2. Google authentication
    3. Collaboration
2. Explore potential coding platform APIs
    1. Basic layout
    2. Syntax checker and highlighter for the basic languages (let's focus on Java, Python first)
    3. Create Dev env where you can load libraries (Does import numpy work?)
    4. Functionality to run the code.


## Meeting Notes
### What we want
1. Auto-sync to Google Drive – **Google API**
2. Basically "Google Docs for code" - **Google API**
3. Editor – **Coding/Other API**
    1. Highlight
    2. Auto Complete
    3. Syntax Check
4. Running Code (focus on Java first) **Coding/Other API**
    1. Compiler
    2. Development environment
    3. Terminal
### Starting Point
Get Java syntax highlight wile multiple people type
#### To Get There
1. Login 2 users
2. Create development environmet (Create new file/project)
3. Have functional editor (textbox that recognizes syntax)
4. Sync/Save file to Google Drive with correct permissions (give access to correct collaborator)
#### From Google's side
1. Handle Authentication
    1. Login
    2. Registration
    3. Account Reset
2. Handle Sync/Save and Data Transfer
3. Handle Permissions
#### Pages we need
1. Home Page (optional)
2. Login
3. Dashboard
    1. Holds project folders similar to GitHub <user>/project1/../file1
4. Editor
5. Logout
6. Error Page


## Next Steps
Create Rspec tests

## Update 03/05/2020
### Pages List
1. Log in
2. Dashboard with list of project folders
3. Project view with all files
4. File text editor
5. New project creation page
6. Edit project page

Optionally:
1. File viewer without editing
2. Error Page

### Iteration 1 Flow Chart
![It.1 Flowchart](/images/it1_flowchart.png)
