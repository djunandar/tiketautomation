# Bugs Ticket
[Login] User login force closed in Android Lollipop.
>Type: bugs
>Priority: High 
>Environment: Production
>Reporter: Didit Yunandar
>Asignee: TiketDev

```sh
Descriptions:
What:
- User cannot login properly with Android Lollipop

When:
- Login with correct username and correct password

Where:
- Login Page

Who:
- Android User 
- version Lollipop
- Tiket App version XX

Why:
- It could happen because the user has not upgraded the Tiket App version.
- It could happen because the user has not upgraded the Android version.
- It could happen because the Tiket application still does not suit the Android Lollipop version

-How:
-   Create version checking feature to the application, if user used the version of XX to update to latest version
- Version checking to the android version, check the latest working Tiket application, and suggest user to uninstall and re install with suggested Tiket Application based on latest working Tiket Application.
- Create a pop up message and Ask user to upgrade the Android Version with pleasant words, “Nikmati beragam fitur terbaru aplikasi Tiket dan nikmati promonya, ps. hanya ada di versi namun kamu tetap bisa mengakses Tiket.com melaui website. On installation Describe the latest App user can install with minimum android version in XX.
```

Handling issue force closed Android.
1. tell the developer how all the possible case why is it force close
2. rise to the product owner about the solution I made.
3. Grooming together and decide what solution is the best.

Severity level is High, because force closed is blocker to User. In my experience, logged-in users have a great opportunity to use the application and make payments.
Besides that, if the user just wants to browse Tiket Product like a Plane ticket or Hotel booking, the user can do it without logging in and usually do it on the Tiket.com website. In this case, users who have registered and installed the ticket application will usually make a transaction.

the conclusion is, if there are blockers that can affect the company's profits, it must be resolved immediately. because the impact is bad either for the company or for the user experience.