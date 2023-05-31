## WD301 Capstone API

### Steps to run locally

```
bundle install

cp example.env .env

Update the values of DB_USERNAME and DB_PASSWORD in the new .env file.

rails server
```

-----------------



API Documentation

This repository contains the documentation for the API V1. <br>
Articles
List Articles

    Summary: Get a list of articles.
    Path: /articles
    Method: GET
    Tags: Articles
    Responses:
        200: Successful response

Show Article

    Summary: Get an article by ID.
    Path: /articles/{id}
    Method: GET
    Tags: Articles
    Parameters:
        id (path, required): ID of the article (string)
    Responses:
        200: Successful response

Matches
List Matches

    Summary: Get a list of matches.
    Path: /matches
    Method: GET
    Tags: Matches
    Responses:
        200: Successful response

Show Match

    Summary: Get a match by ID.
    Path: /matches/{id}
    Method: GET
    Tags: Matches
    Parameters:
        id (path, required): ID of the match (string)
    Responses:
        200: Successful response

Sports
List Sports

    Summary: Get a list of sports.
    Path: /sports
    Method: GET
    Tags: Sports
    Responses:
        200: Successful response

Show Sport

    Summary: Get a sport by ID.
    Path: /sports/{id}
    Method: GET
    Tags: Sports
    Parameters:
        id (path, required): ID of the sport (string)
    Responses:
        200: Successful response

Teams
List Teams

    Summary: Get a list of teams.
    Path: /teams
    Method: GET
    Tags: Teams
    Responses:
        200: Successful response

Show Team

    Summary: Get a team by ID.
    Path: /teams/{id}
    Method: GET
    Tags: Teams
    Parameters:
        id (path, required): ID of the team (string)
    Responses:
        200: Successful response

Users
Me User

    Summary: Get current user information.
    Path: /users/me
    Method: GET
    Tags: Users
    Security:
        ApiKeyAuth
    Responses:
        200: Successful response

Get Preferences User

    Summary: Get current user preferences.
    Path: /users/me/preferences
    Method: GET
    Tags: Users
    Security:
        ApiKeyAuth
    Responses:
        200: Successful response

Update Preferences User

    Summary: Update current user preferences.
    Path: /users/me/preferences
    Method: PATCH
    Tags: Users
    Security:
        ApiKeyAuth
    Responses:
        200: Successful response

Update Password User

    Summary: Update current user password.
    Path: /users/me/update_password
    Method: PATCH
    Tags: Users
    Security:
        ApiKeyAuth
    Responses:
        200: Successful response

Sign In User

    Summary: Sign in as a user.
    Path: /users/sign_in
    Method: POST
    Tags: Users
    Responses:
        200: Successful response

Create User

    Summary: Create a new user.
    Path: /users
    Method: POST
    Tags: Users
    Responses:
        201: User created
            Example:

            json

    {
      "user": {
        "id": 1,
        "name": "John Doe",
        "email": "user9@example.com",
        "preferences": {}
      },
      "auth_token": "e7edbdb39a4b517a268c88e0fffae0e4fa34f793b5b717ae06868b123f3704821685478335"
    }

422: Unprocessable entity

    Example:

    json

        {
          "errors": [
            "Password can't be blank",
            "Name can't be blank",
            "Email can't be blank",
            "Email is invalid"
          ]
        }

Request Body:

    Content-Type: application/json
    Schema:

    json

        {
          "name": "John Doe",
          "email": "user9@example.com",
          "password": "StrongPassword@99"
        }

            Required fields: name, email, password

Security

    ApiKeyAuth: API key authentication
        Type: apiKey
        Name: Authorization
        In: header

Servers

    Base URL: http://{defaultHost}
    Default Host: localhost:5000

Please refer to the API documentation for more details.
