# Split App 

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
This is an App that helps a group of people to split money more conveniently. It could be the situation when splitting money with your roommates, or with your friends for a travle. All you need to do is to add the group memebers' names and the money each member spend that needs to be splitted, we will generate a bill (or receipt) for each member with the amount they need to pay (or need to receive).

### App Evaluation
- **Category:** FinTech App
- **Mobile:** iOS
- **Story:** This is an App that helps a group of people to split money more conveniently. It could be the situation when splitting money with your roommates, or with your friends for a travle. All you need to do is to add the group memebers' names and the money each member spend that needs to be splitted, we will generate a bill (or receipt) for each member with the amount they need to pay (or need to receive).
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
Not yet available

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]