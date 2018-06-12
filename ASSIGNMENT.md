# QuestionBox API

## Description

Modify your QuestionBox application and add API functionality to it. You'll work on this weekend project with your existing QB team and a front-end team.

The front-end team will build a React application that will send AJAX requests to your application's API. Your application will respond with JSON data that the front end will display using React.

Your application can still work as it currently does, but it should respond to requests for JSON data _in addition_ to serving HTML. It should incorporate token-based authentication for API users. Some endpoints for your API should be freely available, but for creating and editing capabilities, API users will need to be authenticated.

The API should allow all the same CRUD functions that the original application does, including user registration and authentication. Now, your application will allow users to register via api and registered users to request an auth token for making API requests that require authentication (creating and editing capabilities).

Your first order of business should be communicating with the front-end developers about the structure and content of the data your application returns and the ui that they are building. It is possible that you may have to adjust your endpoints and the data you are returning in order to accommodate the needs of the front end.

Your API should be completely documentated for developers using your API. The README for your application is a good place to put this documentation.

## Extra Challenges

- Allow photo or file uploads using ActiveStorage
- Send email for new user registrations using an email service add-on through Heroku
- Create admin users and an admin dashboard using ActiveAdmin
- Add documentation for developers in the UI itself
- Implement authentication using a gem. Some options are:
  - [OmniAuth](https://github.com/omniauth/omniauth)
  - [Doorkeeper](https://github.com/doorkeeper-gem/doorkeeper)
  - [AuthLogic](https://github.com/binarylogic/authlogic)
  - [Devise](https://github.com/omniauth/omniauth)
