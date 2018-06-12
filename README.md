# code{interview} Documentation

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
:::warning
Displays an index of all questions including title, body and user who authored it. Also starts with pagination info needed to programmatically request all data in series.
:::

**Request**
GET api/v1/questions

**Response**
200 = Response will be an object/ array containing a list of question objects. Questions structure: 

```JSON
{
    "total_questions": 30,
    "questions_per_page": 5,
    "total_pages": 6,
    "next": "/questions.json?page=2",
    "questions": [
        {
            "id": 1,
            "title": "OOP",
            "body": "Tell me what you know about Object Oriented Programming.    \n    *Follow-up question:* Are there any other styles of programming?",
            "created_at": "2018-06-07T16:21:33.440Z",
            "updated_at": "2018-06-07T16:21:33.440Z",
            "url": "http://localhost:3000/questions/1.json"
        },
        {
            "id": 2,
            "title": "Tough Question",
            "body": "What is *duck-typing*?",
            "created_at": "2018-06-07T16:21:33.477Z",
            "updated_at": "2018-06-07T16:21:33.477Z",
            "url": "http://localhost:3000/questions/2.json"
        },
        {
            "id": 3,
            "title": "Good Vocabulary",
            "body": "What is *polymorphism*?",
            "created_at": "2018-06-07T16:21:33.488Z",
            "updated_at": "2018-06-07T16:21:33.488Z",
            "url": "http://localhost:3000/questions/3.json"
        },
        {
            "id": 4,
            "title": "MVC",
            "body": "Describe the M-V-C programming design pattern.   \n    *Tip-* Can you draw it out to help you describe it?",
            "created_at": "2018-06-07T16:21:33.494Z",
            "updated_at": "2018-06-07T16:21:33.494Z",
            "url": "http://localhost:3000/questions/4.json"
        },
        {
            "id": 5,
            "title": "Workflow",
            "body": "Can you describe your workflow when you create a web page or web app?",
            "created_at": "2018-06-07T16:21:33.499Z",
            "updated_at": "2018-06-07T16:21:33.499Z",
            "url": "http://localhost:3000/questions/5.json"
        }
    ]
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
        "id": 2,
        "attributes": {
            "id": 2,
            "title": "Tough Question",
            "body": "What is *duck-typing*?",
            "user_id": 1,
            "created": "2018-06-07T16:21:33.477Z",
            "updated": "2018-06-07T16:21:33.477Z",
            "answers": [
                {
                    "id": 3,
                    "question_id": 2,
                    "user_id": 4,
                    "text": "edited",
                    "created_at": "2018-06-08T20:09:25.494Z",
                    "updated_at": "2018-06-09T20:52:02.433Z",
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
    "id": 2,
    "user_id": 7,
    "question_id": 30,
    "text": "here is an answer",
    "created_at": "2018-06-08T16:27:39.674Z",
    "updated_at": "2018-06-08T16:27:39.674Z",
    "valid_answer": false,
    "url": "http://localhost:3000/answers/2.json"
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
:::warning
User's questions and answers are paginated. Data contains links to query next pages in series.
:::
**Request:**
GET /api/v1/users/(:id)

**Response:**
200= Response includes user object, including an array of its associated questions and answers:
``` JSON
{
    "data": {
        "id": 2,
        "attributes": {
            "id": 2,
            "username": "henryb",
            "email_address": "henry@dog.com",
            "api_token": "e9sZFEYrPoTYRcn3E7AcctZo",
            "questions": {
                "total_questions": 1,
                "questions_per_page": 1,
                "total_pages": 1,
                "next": null,
                "questions": [
                    {
                        "id": 31,
                        "title": "HENRYS QUESTION",
                        "body": "A QUESTION BODY",
                        "user_id": 2,
                        "created_at": "2018-06-10T23:49:45.906Z",
                        "updated_at": "2018-06-10T23:49:45.906Z"
                    }
                ]
            },
            "answers": {
                "total_answers": 1,
                "answers_per_page": 1,
                "total_pages": 1,
                "next": null,
                "answers": [
                    {
                        "id": 11,
                        "question_id": 31,
                        "user_id": 2,
                        "text": "here is a new answer jjjjjj",
                        "created_at": "2018-06-10T23:54:55.915Z",
                        "updated_at": "2018-06-10T23:54:55.915Z",
                        "question_title": "HENRYS QUESTION",
                        "question_body": "A QUESTION BODY"
                    }
                ]
            }
        }
    }
}
```

