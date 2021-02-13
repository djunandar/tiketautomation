import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject

import com.kms.katalon.core.annotation.Keyword
import com.kms.katalon.core.checkpoint.Checkpoint
import com.kms.katalon.core.checkpoint.CheckpointFactory
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling
import com.kms.katalon.core.testcase.TestCase
import com.kms.katalon.core.testcase.TestCaseFactory
import com.kms.katalon.core.testdata.TestData
import com.kms.katalon.core.testdata.TestDataFactory
import com.kms.katalon.core.testobject.ObjectRepository
import com.kms.katalon.core.testobject.TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI

import internal.GlobalVariable

import org.openqa.selenium.WebElement
import org.openqa.selenium.WebDriver
import org.openqa.selenium.By

import com.kms.katalon.core.mobile.keyword.internal.MobileDriverFactory
import com.kms.katalon.core.webui.driver.DriverFactory

import com.kms.katalon.core.testobject.RequestObject
import com.kms.katalon.core.testobject.ResponseObject
import com.kms.katalon.core.testobject.ConditionType
import com.kms.katalon.core.testobject.TestObjectProperty

import com.kms.katalon.core.mobile.helper.MobileElementCommonHelper
import com.kms.katalon.core.util.KeywordUtil

import com.kms.katalon.core.webui.exception.WebElementNotFoundException

import cucumber.api.java.en.And
import cucumber.api.java.en.Given
import cucumber.api.java.en.Then
import cucumber.api.java.en.When



class trainTicketBookingSteps {
	/**
	 * The step definitions below match with Katalon sample Gherkin steps
	 */
	@Given("User navigate to Tiket Page")
	def navigateToLoginPAge() {
		WebUI.openBrowser('')

		WebUI.navigateToUrl('http://www.tiket.com')
	}

	@When("User fill choose keberangkatan")
	def I_check_for_the_value_in_step(int value) {
	WebUI.setText(findTestObject('Dashboard/berangkatKereta - dropdown'), 'jakarta')
	WebUI.scrollToElement(findTestObject('Dashboard/dropdown - place1'), 0)
	WebUI.verifyElementClickable(findTestObject('Dashboard/dropdown - place1'))
	WebUI.enhancedClick(findTestObject('Dashboard/dropdown - place1'))
	}
	
	@And ("User choose tujuan")
	def I_check_for_the_value_in_step1(int value) {
	WebUI.setText(findTestObject('Dashboard/tujuanKereta - dropdown'), 'malang')
	WebUI.scrollToElement(findTestObject('Dashboard/dropdown - place1'), 0)
	WebUI.verifyElementClickable(findTestObject('Dashboard/dropdown - place1'))
	WebUI.enhancedClick(findTestObject('Dashboard/dropdown - place1'))
	}

	@And ("User choose start date")
	def I_check_for_the_value_in_step2(int value) {
		WebUI.click(findTestObject('Dashboard/DatePicker - 27'))
	}

	@And ("User choose end date")
	def I_check_for_the_value_in_step3(int value) {
		WebUI.click(findTestObject('Dashboard/DatePicker - 28'))
	}

	@And ("User choose amount of (.*)")
	def I_check_for_the_value_in_step4(int guest) {

		for (def i = 1; i < guest; i++) {
    WebUI.click(findTestObject('Dashboard/Guest Counter'))
}
	}

	@And("User choose amount of (.*)")
	def I_check_for_the_value_in_step5(int room) {

		for (def i = 1; i < room; i++) {
    WebUI.click(findTestObject('Dashboard/Room Counter'))
}
	}


	@Then ("I verify the result page")
	def I_check_for_the_value_in_step6() {
		WebUI.click(findTestObject('Dashboard/button Selesai'))
	}

	@And ("User choose hotel from result page")
	def I_check_for_the_value_in_step7(int value) {
	WebUI.click(findTestObject('Dashboard/button Cari Hotel'))
	}

	@Then ("User directed to detail hotel page")
	def I_check_for_the_value_in_step8(int value) {
	WebUI.click(findTestObject('Result Page/PlaceNumber1'))
	}

	@And ("User choose available room hotel")
	def I_check_for_the_value_in_step9(currentWindow = WebUI.getWindowIndex()) {
	currentWindow = WebUI.getWindowIndex()

	//Go To New Tab
	WebUI.switchToWindowIndex(currentWindow + 1)

	WebUI.click(findTestObject('Result Page/chooseHotel'), FailureHandling.CONTINUE_ON_FAILURE)
	}

	@Then ("User fill detail order form")
	def I_check_for_the_value_in_step10() {
	WebUI.click(findTestObject('Object Repository/Order Page/Lanjut Pembayaran - button'))
	}


	@And ("User will directed to payment page")
	def I_check_for_the_value_in_step11(int value) {
	WebUI.verifyElementPresent(findTestObject('Object Repository/Payment Page/Selesaikan pemesanan'), 0)
	}


	@Then ("User choose payment method")
	def I_check_for_the_value_in_step12(int value) {
	WebUI.click(findTestObject('Object Repository/Payment Page/ShopeePay'))
	}

	@And ("click lanjutkan")
	def I_check_for_the_value_in_step13(int value) {
	WebUI.click(findTestObject('Object Repository/Payment Page/Lanjutkan'))
	}

	@Then ("After payment success User can see the detail of order")
	def I_check_for_the_value_in_step14(int value) {
		println value
	}
}