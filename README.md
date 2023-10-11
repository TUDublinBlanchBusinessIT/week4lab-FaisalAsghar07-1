"# insertSQLDataPHP"

Clone this repo into your **www** folder under laragon. In the command prompt cd into the \laragon\www folder. Make sure that you are in the correct folder and that laragon\www appears in the command prompt. Type ***git clone your-repo-url*** (Get your repo url from github after creating the repo). Then cd into the folder you have just cloned by typing ***cd week4Lab-yourgithubid***. Once you are in the correct folder, keep this command window open so you can type in your git commands as required.

# Part 1
From within Laragon, click on the cog icon in the top right-hand corner to open up the settings page. Click on the "Services and Ports" tab of the settings. Change the port for MySQL from 3306 to 3307. Click "X" in the top right hand corner to close the Settings. Now click on the Start All button and notice how the Database is listening on Port 3307. We need to do this because on the lab computers, there is already a MySQL database Server listening on the default MySQL port 3306. The Laragon MySQL database server is a separate instance of the MySQL Database Server which is listening on a separate port. In this way, we can run separate instances without a conflict.

Next, click on the Database button from the Laragon home screen to start the Database Client Application. There are a number of different SQL client apps including MySQL Workbench. The SQL client that comes with Laragon, HeidiSQL, is a popular application that is easy to use. Using the starter code in the repo, paste the SQL code from the CreateDatabase.sql script into the Query Window and press the "play" button this will execute the commands in the CreateDatabase.sql script and create a simple database called tennisclub which will include three tables, Members, |Courts and Bookings along with some test data. To verify the data, create a new SQL query window, type ***Select * from Member;*** and execute the query by pressing the "play" button. You should see a list of six members of the tennisclub.

Once the script has been executed and the database has been created, modify the credentials in the insertSQLData.php script so that the correct credentials are used to connect to the database. If you're not sure what credentials to use, refer to the slides for this week. Execute the PHP script in insertSQLData.php by visiting http://localhost/week4Lab-yourGithubID/insertSQLData.php. If the credentials are correct a new Member called John Doe should have been inserted as a Member of the tennisclub.

Once you get this working, commit your code with a good meaningful message and push your code into your repo.

# Part 2
Create a PHP file called Part2.php which contains all the code from insertSQLData.php. To add this file to your repo type ***git add .*** and then push your file by typing ***git commit -am 'added Part2.php'*** 
Retrieve the HTML code from the Week3 lab which showed a HTML form with firstname and surname. Save this html code to a file in your repo folder called newMember.php. Add and push this file by typing ***git add .*** and then push your file by typing ***git commit -am 'added newMember.html'***
Modify the HTML form so that the "action" in the form tag is "Part2.php" and change the "method" attribute so that the form will use the POST method rather than GET. 
Modify the code in Part2.php so that rather than inserting hard-coded data "John Doe" into the database, the program retrieves the data submitted by the newMember.html form and inserts it into the database as a new member.
Test your code by visiting http://localhost/week4Lab-yourGithubID/newMember.html. Give the new member's details and submit the form. Go to the database HeidiSQL app and type ***select * from Member*** to verify that the Member was inserted into the database.

Once you get this working, commit your code with a good meaningful message and push your code into your repo.

# Part 3
Create a PHP file called Part3.php which contains all the code from insertSQLData.php. To add this file to your repo type ***git add .*** and then push your file by typing ***git commit -am 'added Part3.php'*** 
Look up the Database section under PHP on the w3schools website. On the left bar, scroll down to the MySQL Data section and find the MySQL Select Data example. Make sure you scroll passed the MySQL Object Oriented version of the example to the MySQLi-Procedural version of the example. Take the relevant code from the example (i.e. the SQL query, the command that executes the query and the while loop that outputs the results) and paste this code into your Part3.php file at the appropriate point - i.e. replace the "insert into" aspects of that code reflecting the fact that you will now be pulling data from the db rather than inserting it. You will need to modify the SQL select query and the associative array variables to reflect slightly different column names in the Member table of your database.

Test your code by visiting http://localhost/week4Lab-yourGithubID/Part3.php. The code should show members of the database displayed on the screen in list form separated by commas.

Once you get this working, commit your code with a good meaningful message and push your code into your repo.





