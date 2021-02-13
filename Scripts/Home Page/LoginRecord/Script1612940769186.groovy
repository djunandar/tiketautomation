import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import static com.kms.katalon.core.testobject.ObjectRepository.findWindowsObject
import com.kms.katalon.core.checkpoint.Checkpoint as Checkpoint
import com.kms.katalon.core.cucumber.keyword.CucumberBuiltinKeywords as CucumberKW
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling as FailureHandling
import com.kms.katalon.core.testcase.TestCase as TestCase
import com.kms.katalon.core.testdata.TestData as TestData
import com.kms.katalon.core.testobject.TestObject as TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import com.kms.katalon.core.windows.keyword.WindowsBuiltinKeywords as Windows
import internal.GlobalVariable as GlobalVariable
import org.openqa.selenium.Keys as Keys

WebUI.openBrowser('')

WebUI.maximizeWindow()

WebUI.navigateToUrl('https://www.tiket.com/')

WebUI.click(findTestObject('Object Repository/Recorded/Page_tiket.com - Satu Aplikasi untuk Kebutu_9595f9/a_Login'))

WebUI.click(findTestObject('Object Repository/Recorded/Page_Log in/div_Masuk dengan Facebook'))

WebUI.switchToWindowTitle('Facebook')

not_run: WebUI.setText(findTestObject('Object Repository/Recorded/Page_Facebook/input_Email atau Telepon_email'), 'djunandar')

not_run: WebUI.setEncryptedText(findTestObject('Object Repository/Recorded/Page_Facebook/input_Kata sandi_pass'), 'e9kGMPJrHkt3w52r8E4ZnA==')

not_run: WebUI.click(findTestObject('Object Repository/Recorded/Page_Facebook/label_Kata sandi_loginbutton'))

WebUI.click(findTestObject('Object Repository/Recorded/Page_Log in With Facebook/button_Cancel'))

