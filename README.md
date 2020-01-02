
## RemoteWork
 
[https://remote-work-demo.herokuapp.com/](https://remote-work-demo.herokuapp.com/)

[Demo Video]()

RemoteWork is an online freelancing platform site which connects talent with opportunity. Remote Work provides services to the job seekers and employers by providing them a platform for job searching and hiring.
###### There are two types of users Client and Freelancer.
* Client can post different jobs.
* Search jobs (filter jobs based on skills)
* Hire a freelancer
* End the contract
* Edit their account (e.g. change password)
* Clients get SMS notification when a freelancer apply for a job


* Freelancer can search jobs (filter jobs based on skills)
* Apply for a job.
* End the contract.
* Setup their account (e.g. add skills, update profile picture etc.)
* Freelancers get SMS notification when they are hired for a job.


##### Requirements

* Ruby 2.2.5
* Rails 6.0.1
* PostgreSQL

##### Setup and installation
app can be configure by following these steps:
1. Clone the repo `git@github.com:sadaf-urooj/RemoteWork.git`
2. cd to into app directory
3. Run `bundle`
4. Run `rails db:create` 
5. Run `rails db:migrate`
6. Run `rails db:seed`