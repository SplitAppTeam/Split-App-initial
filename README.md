# Split App 

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
This is an App that helps a group of people to split money more conveniently. It could be the situation when splitting the money with your roommates, or with your friends for a journey. All you need to do is to add the group members' names and the money each member spends that needs to be split, we will generate a bill (or receipt) for each member with the amount they need to pay (or need to receive).

### App Evaluation
- **Category:** FinTech App
- **Mobile:** iOS
- **Story:** This is an App that helps a group of people to split money more conveniently. It could be the situation when splitting the money with your roommates, or with your friends for a journey. All you need to do is to add the group members' names and the money each member spends that needs to be split, we will generate a bill (or receipt) for each member with the amount they need to pay (or need to receive).
- **Market:** Any individual could choose to use this app, and to keep it a safe environment, people just need to enter different group name to track their split bill.
- **Habit:** This app could be used as often or unoften as the user wanted depending on how often he or she is evolved with a group of people who need to split money within the group.
- **Scope:** First we would ask the user to enter an event and the group members for this event and help them split money with each member's financial activities. Then this app could evolve to a personal or group financial management app for them to track their spending.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User logs in to see their previous split group bills.
* User logs in and create a new event that requires money splitting with different group members.
* User can invite different users to join the event and split money with them.
* User can enter the activity within a event and how much the activity cost.
* User can assign which group users need to split money for each activity.
* User can assign who pays for the activity.
* ...

**Optional Nice-to-have Stories**

* User can chat with all members in the event group.
* User logs in and see the check board for un-paid split events.
* ...

### 2. Screen Archetypes

* Log In
* Register - User signs up or logs into their account
* Profile Screen 
   * Allows user to upload a photo and fill in information of their bank account
* Event register - User create a new event
   * Allows user to create a new event and add other users that need to split money together
* Activity add - Each user in the event group can add activities
   * Allows user to add activity, specify who paid for this activity and who need to split this activity in the group
* Settings Screen
   * Lets people change language, and app notification settings.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Event Register
* Profile
* Settings

Optional:
* Chat - chat in the event group

**Flow Navigation** (Screen to Screen)
* Forced Log-in -> Account creation if no log in is available
* Event Register -> Invite event members
* Profile -> Text field to be modified. 
* Settings -> Toggle settings

## Wireframes
![](https://i.imgur.com/6YJk7KH.jpg)

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models

#### Event

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for the user post (default field) |
   | author        | Pointer to User| image author |
   | image         | File     | image that user posts |
   | caption       | String   | image caption by author |
   | event count   | number   | number of events that has been created by the author |
   | Wait to pay   |  Number  | number of events that waiting to get paied |
   | Wait to close | Number   | number of events that are paid by the user but not totally paied back yet|
   | createdAt     | DateTime | date when post is last updated (default field) |
   | updatedAt     | DateTime | date when post is last updated (default field) |

### Networking

#### list of network requests by screen

- Home Feed Screen

  (Create/POST) Create a new event

  (Delete) Delete exisiting event

  (Create/POST) Create a new member in the event

  (Delete) Delete existing member

  (GET) Get all events

- Create event Screen

  (Create/POST) Create a new event object

  (create/POST) Create a new member object

- Profile Screen

  (Read/GET) Query logged in user object

  (Update/PUT) Update user profile image

#### basic snippets for each Parse network request
- (Read/GET) Query all events where user is author
  ```
  let query = PFQuery(className:"Event")
  query.whereKey("author", equalTo: currentUser)
  query.order(byDescending: "createdAt")
  query.findObjectsInBackground { (events: [PFObject]?, error: Error?) in
     if let error = error { 
        print(error.localizedDescription)
     } else if let events = events {
        print("Successfully retrieved \(events.count) events.")
    // TODO: Do something with events...
     }
  }
  ```

[OPTIONAL: List endpoints using existing Paypal API]

[Paypal In-App iOS Doc](https://developer.paypal.com/sdk/in-app/ios/)
