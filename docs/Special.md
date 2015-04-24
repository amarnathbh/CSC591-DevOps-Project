# CI - Pipeline - Special Milestone

CSC591 - DevOps Milestone 4 

## Target Project
Continuing from Milestone 3, we are using the same setup and target project(Gitlab). Gitlab is open source version of Github. It is mature, popular and project with complex infrastructure stack using Ruby on Rails, Git, Gitshell, Redis, Nginx, Unicorn. The target app can be found at [Gitlab](http://github.com/yatish27/gitlabhq).
The details of the previous milestones can be found in this same repo
- [Build](https://github.com/yatish27/CSC591-DevOps-Project/blob/master/docs/Build.md)
- [Test](https://github.com/yatish27/CSC591-DevOps-Project/blob/master/docs/Test.md)
- [Deploy] (add a link to the milestone 3 here)

## Special milestone
For adding a special feature to the CI pipeline, we have introduced a monitoring application that heartbeats the load balancer to check if it is alive. If the server is down or the number of requests exceeds a certain threshold, the system administrator receives a call. We have used the Twilio API to introduce this feature in the system.

## Twilio
Twilio basically uses Amazon Web Services to host telephony infrastructure and provide connectivity between HTTP and the public switched telephone network (PSTN) through its APIs.

We are using the trial account at Twilio to make a call to the system administrator through the browser. The trial account only allows outgoing calls to verified numbers. With the account, upgrade we can have otugoing calls from teh browser to any number(s) specified in the list. Custom messages can be set and also SMS alerts can be introduced.


## Implementation 
We have made a Ruby application which pings the load balancer every 15 seconds to check if it working as expected. If not, the system administrator gets a call from the browser. We have also made sure that the system administrator gets the call only once and the does not keep receiving calls continuously until the system is up and working. We have also set a cron for every minute which invokes this ruby monitoring application.
The entire call history can be seen on the twilio dashboard. 


## Presentation
The presentatiion video can be found [here](https://www.youtube.com/watch?v=h0Nvc1B3C90)


