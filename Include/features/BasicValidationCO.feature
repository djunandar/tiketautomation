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
Feature: 
  I want to validate all the basic function is working
  
 
 
  @tag1
  Scenario Outline: Ensure basic function of Dashboard Kinerjaku is working
    Given I open the Terra application
    When I tap <menu> from card menu
    Then the <menu> is Opened and verify the <status>
    
     Examples: 
      | menu  									| status  	|
      | insentifNasabahAktif  	| success 	|
      | insentifPencairan				| success   |
      | totalInsentifditabung		| success   |
      | kinerjaku								| success   |
      
      
	@tag2
  Scenario: Ensure basic function of Aktivitas Harianku is working
    Given I open the Terra application
    When I tap "Aktivitas Harianku" from card menu
    Then I verify the "Aktivitas Harianku" menu is Opened

	@tag3
  Scenario: Ensure basic function of Cash Management is working
    Given I open the Terra application
    When I tap "Cash Management" from card menu
    Then I verify the "Cash Management" menu is Opened
 
  
  @tag4
  Scenario: Ensure basic function of Laporan Penagihan is working
    Given I open the Terra application
    When I tap "Laporan Penagihan" from card menu
    Then I verify the "Laporan Penagihan" menu is Opened

  @tag5
  Scenario: Ensure basic function of Laporan Mutasi Uang Tunai is working
    Given I open the Terra application
    When I tap "Laporan Mutasi Uang Tunai" from card menu
    Then I verify the "Laporan Mutasi Uang Tunai" menu is Opened

  @tag6
  Scenario: Ensure basic function of Laporan Aktivitas Harian is working
    Given I open the Terra application
    When I tap "Laporan Aktivitas Harian" from card menu
    Then I verify the "Laporan Aktivitas Harian" menu is Opened

  @tag7
  Scenario: Ensure basic function of Laporan PRS is working
    Given I open the Terra application
    When I tap "Laporan PRS" from card menu
    Then I verify the "Laporan PRS" menu is Opened

  @tag8
  Scenario: Ensure basic function of Instruksi Debit is working
    Given I open the Terra application
    When I tap "Instruksi Debit" from card menu
    Then I verify the "Instruksi Debit" menu is Opened

  @tag9
  Scenario: Ensure basic function of Pengajuan Deviasi is working
    Given I open the Terra application
    When I tap "Pengajuan Deviasi" from card menu
    Then I verify the "Pengajuan Deviasi" menu is Opened

  

  @tag10
  Scenario: Ensure basic function of Pencarian Nasabah is working
    Given I open the Terra application
    When I tap "Pencarian Nasabah" from card menu
    Then I verify the "Pencarian Nasabah" menu is Opened

  @tag11
  Scenario: Ensure basic function of Survey dan Wawancara is working
    Given I open the Terra application
    When I tap "Survey dan Wawancara" from card menu
    Then I verify the "Survey dan Wawancara" menu is Opened

  @tag12
  Scenario: Ensure basic function of Input System is working
    Given I open the Terra application
    When I tap "Input System" from card menu
    Then I verify the "Input System" menu is Opened

  @tag13
  Scenario: Ensure basic function of PDK Sentra Baru is working
    Given I open the Terra application
    When I tap "PDK Sentra baru" from card menu
    Then I verify the Nasabah Potensial menu is Opened

  @tag14
  Scenario: Ensure basic function of Nasabah Potensial is working
    Given I open the Terra application
    When I tap "Nasabah Potensial" from card menu
    Then I verify the "Nasabah Potensial" menu is Opened
    
  @tag15
  Scenario: Ensure basic function of Pusat Bantuan Terra is working
    Given I open the Terra application
    When I tap "Pusat Bantuan Terra" from card menu
    Then I verify the "Pusat Bantuan Terra" menu is Opened




	@tag2
	Scenario Outline: Title of your scenario outline
    Given I want to write a step with <name>
    When I check for the <value> in step
    Then I verify the <status> in step
	
	
    Examples: 
      | name  | value | status  |
      | sucessUsername |     5 | success |
      | name2 |     7 | Fail    |