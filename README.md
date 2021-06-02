Hi, welcome to the StayNow Application! Using this application will provide users with a website to reserve available rental units. Users will own a combination of objects(rentals, reservations and trips) and are provided with the ability to create new reservations.

Installation
Execute:

Please clone and open both repositories:

Staynow backend https://github.com/giegeralexandra/staynow-backend1
Staynow frontend https://github.com/giegeralexandra/staynow-frontend

Backend Setup 
$ bundle install
Once gems are installed, execute:

$ rails db:migrate
Once migrations are completed, execute:

$ rails s
Proceed to Frontend setup

Frontend Setup 

$ npm install 
$ npm start 
Proceed to browser http://localhost:3000


Usage
Once the homepage is successfully loaded in browser, user must login or signup.

If user already owns an account, please click Login to continue. If user is new to website, please click Signup.

If user is already logged in, the browser will redirect you to the home page. 

User may select to also navigate to the rentals, trips or reservations page. 

License
The is available as open source under the terms of the MIT License.