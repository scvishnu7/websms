# websms
Trying to simplify the websms easy to use. curl is used to login and send sms from command line

All you have to do is install `curl` on your system and then run this script.

`./sendsms <username> <password:optional> <recipient> <message body>`

Or install the file into system by issuing

`sudo install sendsms /usr/bin/`

you will be asked the credentials for http://www.meet.net.np/meet. Provide the correct credeintals to send the sms successfully

The meet.net.np limitation
- 140 charcter at time
- 10 sms on a day

