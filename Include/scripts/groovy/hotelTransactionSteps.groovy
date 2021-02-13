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



class hotelTransactionSteps {
	/**
	 * The step definitions below match with Katalon sample Gherkin steps
	 */
	@Given("User navigate to Tiket Page")
	def navigateToLoginPAge() {
		WebUI.openBrowser('')

		WebUI.navigateToUrl('http://www.tiket.com')
	}
	
	@When("User fill choose <tujuan>")
	def I_check_for_the_value_in_step(int value) {
		println value
	}
	
	
	@And ("User choose <startdate>")
	def I_check_for_the_value_in_step2(int value) {
		println value
	}
	
	@And ("User choose <enddate>")
	def I_check_for_the_value_in_step3(int value) {
		println value
	}
	
	@And ("User choose amount of <guest>")
	def I_check_for_the_value_in_step4(int value) {
		println value
	}
	
	@And("User choose amount of <room>")
	def I_check_for_the_value_in_step5(int value) {
		println value
	}
	
	
	@Then ("I verify the result page")
	def I_check_for_the_value_in_step6(int value) {
		println value
	}
	
	@And ("User choose hotel from result page")
	def I_check_for_the_value_in_step7(int value) {
		println value
	}
	
	@Then ("User directed to detail hotel page")
	def I_check_for_the_value_in_step8(int value) {
		println value
	}
	
	@And ("User choose available room hotel")
	def I_check_for_the_value_in_step9(int value) {
		println value
	}
	
	@Then ("User fill detail order form")
	def I_check_for_the_value_in_step10(int value) {
		println value
	}

	
	@And ("User will directed to payment page")
	def I_check_for_the_value_in_step11(int value) {
		println value
	}
	
	
	@Then ("User choose payment method")
	def I_check_for_the_value_in_step12(int value) {
		println value
	}
	
	@And ("click lanjutkan")
	def I_check_for_the_value_in_step13(int value) {
		println value
	}
	
	@Then ("After payment success User can see the detail of order")
	def I_check_for_the_value_in_step14(int value) {
		println value
	}
}