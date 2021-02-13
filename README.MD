Hi, welcome!

This is Readme file

Author: Didit Yunandar djunandar@gmail.com

This readme file contain automation script for booking process in Tiket[dot]com Indonesia. 
Automation Script can be running in Katalon Studio by running feature file:
- ProductTrainTransaction.feature
- ProductHotelTransaction.feature
to running the file:
1. Running file open feature file by katalon studio and click run as cucumber or click on green play button and choose your casual browser.
2. Open BDD Cucumber Folder below Test Case Folder, open Test case and run with Web Browser
3. To run all the scenario easily go to Test Suit and run TS-01.

Notes:
1.	To change total guest and total room for booking hotel, go to ProductHotelTransaction.feature
	and change the default value to the one you want.
2. 	To change total adults and total infants for booking train tickets, go to ProductTrainTransaction.feature
	and change the default value to the one you want.	


Scenario
Choose two of three scenarios below:
• Product hotel: Create transaction with non-instant payment for xx guest and xx room and
login using Facebook
• Product Flight: Create transaction with Virtual Account for domestic round trip with xx
transit and login with email
• Product Train: Create transaction with non-instant payment for one-way trip, xx adults
and xx infants and select seats.

Note for all scenario:
● Check filter feature before create transaction
● Logout after transaction created
● Verify element/text that you think is important
● Change xx with any integer (make sure your script dynamic)
● Not only copy paste the xpath, better if you custom the element

usage

Learn how registration in Tiket.com
Learning how BDD process works in Katalon studio