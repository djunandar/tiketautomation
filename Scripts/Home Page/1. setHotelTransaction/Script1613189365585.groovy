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

WebUI.openBrowser('')

WebUI.navigateToUrl('http://www.tiket.com')

not_run: WebUI.click(findTestObject('Dashboard/tujuan Hotel'), FailureHandling.CONTINUE_ON_FAILURE)

WebUI.setText(findTestObject('Dashboard/tujuan Hotel'), 'pemalang')

WebUI.scrollToElement(findTestObject('Dashboard/dropdown - place1'), 0)

WebUI.verifyElementClickable(findTestObject('Dashboard/dropdown - place1'))

WebUI.enhancedClick(findTestObject('Dashboard/dropdown - place1'))

WebUI.click(findTestObject('Dashboard/DatePicker - 27'))

WebUI.click(findTestObject('Dashboard/DatePicker - 28'))

def a = 6

for (def i = 1; i < a; i++) {
    WebUI.click(findTestObject('Dashboard/Guest Counter'))
}

def b = 5

for (def i = 1; i < b; i++) {
    WebUI.click(findTestObject('Dashboard/Room Counter'))
}

WebUI.click(findTestObject('Dashboard/button Selesai'))

WebUI.click(findTestObject('Dashboard/button Cari Hotel'))

