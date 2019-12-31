Feature: Case workflow management

  #Author: baburao.lunavath@qbe.com
  #USer Stroy Discription: Ability to have a functionality for the CSO/Triager on where they can see the allocated cases to them
  #epic GWMS-80
  #Sprint 4
  #Test case coverage || Total TC's - 12 || Total automated TC's - 12
  @smoke
  Scenario Outline: Ability to have a functionality for the CSO/Triager on where they can see the allocated cases to them
    Given Open the browser and navigate to particular url
    Given User send a mail to QBE with subject "<keywordinsubject>" and "<policyorquotenoinsubject>"
    When I enter valid username  "<username>" and "<password>" click on Login button
    Then Login should be successfully completed
    Then Open the case and verify the case is routed to complex work basket with "<keywordinsubject>" and "<policyorquotenoinsubject>"
    When Ability to have a functionality for the CSO or Triager on where they can see the allocated cases to them "<priority>"
    Then click on logout link and close the browser

    Examples: 
      | keywordinsubject | policyorquotenoinsubject | username | password  | priority |
      | QI 1234567 MVA   | QI 1234567 PAD           | triager  | OF@123456 |        0 |
