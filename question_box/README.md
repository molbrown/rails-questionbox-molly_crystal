# code{interview} Documentation

Ruby Version: 2.5.0
Version 1
Date: 6/8/18
Authors: cdmackeyfree / molbrown

:::info
**ALL REQUESTS MUST** contain
` X-Requested-With:XMLHttpRequest `
in the header. 
API functionality depends on it.
:::

## **1. Register New User**
**Request:**
POST api/v1/users

**Params:**
`username:string`
`password:string`
`email:string`

**Response:**
201 = User created, will display user credentials including generated api_token
400= Error type will display

## **2. Login** 
**Request:**
POST api/v1/sessions

**Params:** 
`username:string`
`password:string`

**Response:**
200 = {token = "api_token"}
401 = Unauthorized credentials

:::info
api_token exposed after login needs to be added to header for future authenticated actions.
:::



## **3. Get all Questions**
:::info
Displays an index of all questions including title, body and user who authored it
:::

**Request**
GET api/v1/questions

**Response**
200 = Response will be an object/ array containing a list of question objects. Question object structure: 

```JSON
{
"id": 6,
"title": "MVC",
"body": "Describe the M-V-C programming design pattern.   \n    *Tip-* Can you draw it out to help you describe it?",
"user_id": 1,
"created_at": "2018-06-02T13:06:37.695Z",
"updated_at": "2018-06-02T13:06:37.695Z",
"url": "http://localhost:3000/questions/6.json"
}
```

## **4. Get one Question**
**Request**
GET api/v1/questions/(:id)

**Response**
200 = Response includes question object, including an array of its associated answers:
``` JSON
{
    "data": {
        "id": 1,
        "attributes": {
            "id": 1,
            "body": "Tell me what you know about Object Oriented Programming.    \n    *Follow-up question:* Are there any other styles of programming?",
            "user_id": 1,
            "answers": [
                {
                    "id": 1,
                    "question_id": 1,
                    "user_id": 2,
                    "text": "ANSWER",
                    "created_at": "2018-06-07T16:32:18.763Z",
                    "updated_at": "2018-06-07T16:32:18.763Z",
                    "valid_answer": false
                }
            ]
        }
    }
}
```
## **5. Get one Answer**
**Request:**
/api/v1/answers/(:id)

**Response:**
```JSON
{
    "id": 8,
    "question_id": 30,
    "text": "adfpesuotpwfj",
    "created_at": "2018-06-07T20:53:19.073Z",
    "updated_at": "2018-06-07T20:53:30.513Z",
    "url": "http://localhost:3000/answers/8.json"
}
```


## **6. Create one Question**
**Request:**
POST api/v1/questions/


**Params:** 
`title:string`
`body:string`

**Response:**
201 = creates one question and returns the following structure.

``` JSON
{
    "data": {
        "id": 19,
        "attributes": {
            "id": 19,
            "body": "blerg",
            "user_id": 4,
            "answers": []
        }
    }
}
```

## **7. Create an Answer**
**Request:**
POST api/v1/answers/

**Params:** 
`question_id:integer`
`text:string`

**Response:**
201 = creates one user and returns the following structure:
``` JSON
{
    "id": 2,
    "question_id": 30,
    "text": "here is an answer",
    "created_at": "2018-06-08T16:27:39.674Z",
    "updated_at": "2018-06-08T16:27:39.674Z",
    "url": "http://localhost:3000/answers/2.json"
}
```


## **8. Profile Page**
**Request:**
GET /api/v1/users/(:id)

**Response:**
200= Response includes user object, including an array of its associated questions and answers:
``` JSON
{
    "data": {
        "id": 7,
        "attributes": {
            "id": 7,
            "username": "moltown2",
            "email_address": "email@email.com",
            "api_token": "qYoMHxHaSFNmKzV5X1GQ1y3c",
            "questions": [],
            "answers": []
        }
    }
}
```
