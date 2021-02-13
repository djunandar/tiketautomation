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

WebUI.openBrowser('http://www.tiket.com')

WebUI.setText(findTestObject('Object Repository/Recorded/Page_tiket.com - Satu Aplikasi untuk Kebutu_9595f9/input_Tujuan_productSearchDestination'), 
    'pemalang')

WebUI.click(findTestObject('Object Repository/Recorded/Page_tiket.com - Satu Aplikasi untuk Kebutu_9595f9/div_PemalangJawa Tengah, IndonesiaCITY13 Properti'))

WebUI.click(findTestObject('Object Repository/Recorded/Page_tiket.com - Satu Aplikasi untuk Kebutu_9595f9/span_19'))

WebUI.click(findTestObject('Object Repository/Recorded/Page_tiket.com - Satu Aplikasi untuk Kebutu_9595f9/span_20'))

WebUI.click(findTestObject('Object Repository/Recorded/Page_tiket.com - Satu Aplikasi untuk Kebutu_9595f9/div_1'))

WebUI.click(findTestObject('Object Repository/Recorded/Page_tiket.com - Satu Aplikasi untuk Kebutu_9595f9/i_Tamu_tix tix-plus'))

WebUI.click(findTestObject('Object Repository/Recorded/Page_tiket.com - Satu Aplikasi untuk Kebutu_9595f9/i_Tamu_tix tix-plus'))

WebUI.click(findTestObject('Object Repository/Recorded/Page_tiket.com - Satu Aplikasi untuk Kebutu_9595f9/div_2'))

WebUI.click(findTestObject('Object Repository/Recorded/Page_tiket.com - Satu Aplikasi untuk Kebutu_9595f9/div_SELESAI'))

WebUI.click(findTestObject('Object Repository/Recorded/Page_tiket.com - Satu Aplikasi untuk Kebutu_9595f9/span_SELESAI'))

