#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables) 
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Login Page Tiket.com

In order to ensure User can login easily to Tiket.com  Dashboard without prejudice to the security of the tiket.com application

@positive1
Scenario OutLine: User want to validate basic element in the login page Area

	Given: User open tiket.com website 
	When: User check the <element>
	Then: all the element is present.


Examples:
	|element						|
	|Login title					|
	|Login subtile					|
	|phone number/ email input field	|
	|password input field			|
	|Login button					|
	|Masuk dengan Apple			|
	|Masuk dengan Google			|
	|Masuk dengan Facebook			|
	

@positive2
Scenario: User login with registered email, valid password, and valid OTP
	Given: User navigate to Tiket.com Login Page
	When: User input registered email
	And:	 Password field is appeared
	Then: User input valid password
	And: OTP field is appeared
	Then: User input valid OTP
	And: User click login button
	Then: User is successfully logged in and validate the registered Name by initial in the Top Menu.


@positive3
Scenario: User login with registered Phone Number and valid OTP
	Given: User navigate to Tiket.com Login Page
	When: User input registered Phone Number
	Then: User input valid OTP code
	And: User click login button
	Then: User is successfully logged in and validate the registered Name by initial in the Top Menu.

@positive4
Scenario: User login with valid Apple ID
	Given: User navigate to Tiket.com Login Page
	When: User click on “Masuk dengan Apple”
	Then: Apple ID Login Pop Up is appeared 
	And: User input registered email
	And: User input valid password
	And: Click on sign in button or send keys “Enter”
	Then: Apple ID will validate the sign in
	And: Apple will give Verification Code
	Then: User input 6 digit verification Code
	And: User validate trust issue on the browser 
	And: choose “Trust”
	Then: User is successfully logged in and validate the registered Name by initial in the Top Menu.

@positive5
Scenario: User login with valid Google email
	Given: User navigate to Tiket.com Login Page
	When: User click on “Masuk dengan Google”
	Then: Google Login Pop Up is appeared 
	And: User input registered email
	Then: Password input field is appeared
	And: User input valid password
	And: Click on Next button or send keys “Enter”
	Then: Google will validate the sign in
	And: User validate the login by enter Verification Code
	And: User input 6 digit verification Code
	Then: User is successfully logged in and validate the registered Name by initial in the Top Menu.

@positive6
Scenario: User login with valid Facebook account
	Given: User navigate to Tiket.com Login Page
	When: User click on “Masuk dengan Facebook”
	Then: Facebook Login Pop Up is appeared 
	And: User input registered username/email
	And: User input valid password
	Then: Click on Next button or send keys “Enter”
	And: Facebook will validate the sign in
	And: User validate the login by continue as “Name”
	Then: User is successfully logged in and validate the registered Name by initial in the Top Menu.

@positive7
Scenario: User want to login to the application but forgot the password
	Given: user navigate to Tiket.com Login page 
	When: User input valid registered email
	But: User input incorrect password
	Then: User click on “Lupa Kata Sandi?” 
	And: user will be navigated to Forgot Password page https://www.tiket.com/auth/forget_password
	Then: User input registered Email
	And: User Tiket will validate the ownership by asking OTP
	Then: User input Valid OTP given sent by email
	Then: User input new password as following the format that has been provided
	And: User click “Konfirmasi”
	Then: User is successfully logged in and validate the registered Name by initial in the Top Menu.


@positive8
Scenario Outline: Ensure user can register  as the unregistered email
	Given: User have unregistered email on Tiket.com
	When: User access login page tiket.com/login
	Then: pop up message appears to offer the user to register an email in order to log in to the Tiket
	And: User click yes 
	Then: Register page will appears
	And: User choose <prefix>
	And: User input <firstname>
	And: User input <lastname>
	And: User Choose <countrycode>
	And: User input valid <phonenumber>
	And: User input valid <password>
	And: User click on “Buat Akun”
	Then: User registered with success message

Example:
|prefix	| firstname 	| lastname | countrycode | phonenumber | password |
|tuan	| Budi	 	| doremi	   | +62		    | +62812121212 | Fasola123 |
|nyonya	| Ani	 		| doremi	   | +62		    | +62812121212 | Fasola123 |
|nona	| Siti		 	| doremi	   | +62		    | +62812121212 | Fasola123 |	

@positive9
Scenario Outline: Ensure user can register as without left any mandatory field empty
	Given: User on register Page
	When: User left the register field empty
	And: User left the Title dropdown blank
	Then: Titel field warning message is appears “Tentukan titel”
	And: User left input first name field empty
	Then: input first name warning message is appears “Nama depan belum di isi”
	And: User left input last name field empty
	Then: input last name warning message is appears “Nama belakang belum di isi”
	And: User left input phonenumber field empty
	Then: Password strength meter message is appears “Nomor ponsel belum di isi”
	And: User left input valid password field empty
	Then: Password strength meter warning message is appears “Min. 7 Karakter kombinasi angka, huruf besar dan huruf kecil”


@positive10
Scenario Outline: Ensure password meter on register page is working as fine.
	Given: user already fill all the field on register page except Password
	When: User input <password>
	Then: password strength meter <status> is shown
example:

|password			| status																												|
|123456				| Min. 7 Karakter kombinasi angka, huruf besar dan huruf kecil	|
|Asdqwe1			| Kombinasi kata sandi ini CUKUP BAIK														|
|ASDqwe!@$123	| Kombinasi kata sandi ini KUAT																	|

@positive11
Scenario Outline: Ensure password can be seen on register page if user click on eye icon.
	Given: User already fill all the field on register page except Password
	When: User click on eye Icon.
	Then: The password is visible instead of an asterix

@positive12
Scenario Outline: Ensure user can access Privacy Policy and Terms and Conditions
	Given: User already on register page
	When: User click on <page>
	Then: User will be navigated to <url>
	

Example:	 
| page								| url																				|
| Kebijakan privasi		| https://www.tiket.com/info/privacy-policy	|
| Syarat & ketentuan	| https://www.tiket.com/info/tos 						|


@negative1
Scenario1: User login with blank email or passsword
	Given: User navigate to Tiket.com Login Page
	When: User left email/phone number field empty
	And: User click Lanjutkan button
	Then “ User validate the message “Mohon masukan email atau nomor ponsel”


@negative2
Scenario: User login with registered email and invalid password
	Given: User navigate to Tiket.com Login Page
	When: User input registered email
	And:	 Password field is appeared
	Then: User input invalid password
	And: User click login button
	Then: User validate the message “Email atau kata sandi salah”

@negative3
Scenario: User login with registered email, valid password, and invalid OTP.
	Given: User navigate to Tiket.com Login Page
	When: User input registered email
	And:	 Password field is appeared
	Then: User input valid password
	And:	 OTP field is appeared
	Then: User input invalid OTP
	And: User click login button
	Then: User can not login 
	And: validate the message “Masukkan Kode yang kami kirim”

@negative4
Scenario: User login with registered phone number and invalid OTP
	Given: User navigate to Tiket.com Login Page
	When: User input registered email
	And:	 Password field is appeared
	Then: User input invalid OTP
	And: User click login button
	Then: User can not login
	And: validate the message “Masukkan kode yang kami kirim”

@negative5
Scenario Outline: User Login with Regex format string
	Given: User navigate to Tiket.com Login Page
	When: User input phone numnber/email with <regex>
	Then:  User validate message <message>

Example:
| regex																																		| message 		|
| [A-Z\d][A-Z\d_-]																												| Format email harus seperti email@mail.com. 	|
|/^(?:[A-Z\d][A-Z\d_-]{5,10}|[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4})$/i 	| Format email harus seperti email@mail.com. |
| ^(\+0?1\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$ 													| Format email harus seperti email@mail.com. |


@negative6
Scenario Outline: User input forgot password field with Regex format string
	Given: User navigate to https://www.tiket.com/auth/forget_password Forgot password Page
	When: User input phone numnber/email with <regex>
	Then:  User validate message <message>

Example:
| regex																																		| message 																	|
| [A-Z\d][A-Z\d_-]																												| Format email harus seperti email@mail.com. |
|/^(?:[A-Z\d][A-Z\d_-]{5,10}|[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4})$/i 	| Format email harus seperti email@mail.com. |
| ^(\+0?1\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$ 													| Format email harus seperti email@mail.com. |


@negative7
Scenario Outline: User Login with API Services and cancel
	Given: User navigate to Tiket.com Login Page
	When: User click on <api> services
	And: API’s pop up services will appeared
	Then: I Click close on pop up browser
	Then: toast notification <message> will appear

Example:
| API			| message							|
| Apple		| Gagal masuk dengan Apple. Selesaikan prosesnya untuk bisa masuk. |
| Google		| Login menggunakan Google gagal		|
| Facebook	| Login menggunakan Facebook gagal! 	|


@negative8
Scenario: Ensure user can not double login
	Given: User already login
	When: user navigate to https://www.tiket.com/login
	Then: User will not be directed to login page.


@negative9 // bugs i found
Scenario: User check last transaction while user already log out to the application
	Given: User already logged in to the Tiket.com website
	When: User Click on My Order page
	Then: User directed to My Order page
	And: user Logged out
	And: user click back on browser
	Then: user directed to login page <in this case, the user can still view last transaction and click detail of the transaction>


@negative10 // bugs i found
Scenario: User check last transaction while user already log out to the application
	Given: User already logged in to the Tiket.com website
	When: User Click on Setting page
	Then: User directed to Setting page
	And: user Logged out
	And: user click back on browser
	Then: user directed to login page <in this case, the user can still view personal data information e.g email, phone number, adress from the previous session>




















