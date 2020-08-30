@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

    @predefined2
    Scenario: Predefined steps for Yahoo
      Given I open url "https://yahoo.com"
      Then I should see page title as "Yahoo"
      Then element with xpath "//input[@id='header-search-input']" should be present
      Then I type "Behavior Driven Development" into element with xpath "//input[@id='header-search-input']"
      Then I click on element with xpath " //button[@id='header-desktop-search-button']"
      Then I wait for element with xpath "//div[@id='web']" to be present
      Then element with xpath "//div[@id='web']" should contain text "Cucumber"

      @predefined3
      Scenario: Predefined steps for Bing
        Given I open url "https://bing.com"
        Then I should see page title as "Bing"
        Then element with xpath "//input[@id='sb_form_q']" should be present
        Then I type "Behavior Driven Development" into element with xpath "//input[@id='sb_form_q']"
        Then I click on element with xpath "//label[@class='search icon tooltip']//*[local-name()='svg']"
        Then I wait for element with xpath " //ol[@id='b_results']" to be present
        Then element with xpath " //ol[@id='b_results']" should contain text "Cucumber"

        @predefined4
        Scenario: Predefined steps for Gibiru
          Given I open url "https://gibiru.com"
          Then I should see page title contains "Gibiru"
          Then element with xpath "//input[@id='q']" should be present
          When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
          Then I click on element with xpath "//i[@class='fas fa-search new']"
          Then I wait for element with xpath "//div[@class='gsc-results gsc-webResult']" to be present
          Then element with xpath "//div[@class='gsc-results gsc-webResult']" should contain text "Cucumber"
          
          @predefined5
          Scenario: Predefined steps for DuckDuckGo
            Given I open url "https://duckduckgo.com"
            Then I should see page title as "DuckDuckGo — Privacy, simplified."
            Then element with xpath "//input[@id='search_form_input_homepage']" should be present
            When I type "Behavior Driven Development" into element with xpath "//input[@id='search_form_input_homepage']"
            Then I click on element with xpath "//input[@id='search_button_homepage']"
            Then I wait for element with xpath "//div[@class='results--main']" to be present
            Then element with xpath "//div[@class='results--main']" should contain text "Cucumber"

            @predefined6
              Scenario: Predefined steps for Startpage
              Given I open url "https:startpage.com"
              Then I should see page title contains "Startpage"
              Then element with xpath "//input[@title='Search']" should be present
              When I type "Behavior Driven Development" into element with xpath "//input[@title='Search']"
              And I click on element with xpath "//button[@class='search-form-home__form__button']"
              Then element with xpath "//div[@class='mainline-results--']" should be present
              Then element with xpath "//div[@class='mainline-results--']" should contain text "Cucumber"

            @predefined7
            Scenario: Responsive UI
              Given I open url "https://skryabin.com/market/quote.html"
              And I resize window to 1280 and 1024
              Then element with xpath "//b[@id='location']" should be displayed
              Then I resize window to 768 and 1024
              Then element with xpath "//b[@id='location']" should be displayed
              Then I resize window to 375 and 812
              Then element with xpath "//b[@id='location']" should not be displayed

              @predefined8
              Scenario: Min username length
                Given I open url "https://skryabin.com/market/quote.html"
                When I type "a" into element with xpath "//input[@name='username']"
                And I click on element with xpath "//input[@name='email']"
                Then element with xpath "//*[@id='username-error']" should be displayed
                When I clear element with xpath "//input[@name='username']"
                Then I type "ab" into element with xpath "//input[@name='username']"
                Then element with xpath "//*[@id='username-error']" should not be displayed

                @predefined9
                Scenario: Email field validation
                  Given I open url "https://skryabin.com/market/quote.html"
                  When I type "abc@test.com" into element with xpath "//input[@name='email']"
                  Then element with xpath "//label[@id='email-error']" should not be present
                  Then I clear element with xpath "//input[@name='email']"
                  Then I type "abc" into element with xpath "//input[@name='email']"
                  And I click on element with xpath "//input[@id='password']"
                  Then element with xpath "//label[@id='email-error']" should be displayed

                  @predefined10
                  Scenario: Password fields validation
                    Given I open url "https://skryabin.com/market/quote.html"
                    When I click on element with xpath "//input[@id='password']"
                    Then element with xpath "//input[@id='confirmPassword']" should be disabled
                    Then I type "a" into element with xpath "//input[@id='password']"
                    Then element with xpath "//input[@id='confirmPassword']" should be enabled
                    
                    @predefined11
                    Scenario: Name field validation
                      Given I open url "https://skryabin.com/market/quote.html"
                      When I click on element with xpath "//input[@id='name']"
                      Then element with xpath "//div[@id='nameDialog']" should be displayed
                      When I type "John" into element with xpath "//input[@id='firstName']"
                      And I type "Michael" into element with xpath "//input[@id='middleName']"
                      And I type "Adams" into element with xpath "//input[@id='lastName']"
                      And I click on element with xpath "//span[contains(text(),'Save')]"
                      Then element with xpath "//input[@id='name']" should have attribute "value" as "John Michael Adams"

                      @predefined12
                      Scenario: Accept Privacy Policy field
                        Given I open url "https://skryabin.com/market/quote.html"
                        When I click on element with xpath "//button[@id='formSubmit']"
                        Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should be displayed
                        Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
                        Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should not be displayed
                        
                        @predefined13
                        Scenario: End-to-end test
                          Given I open url "https://skryabin.com/market/quote.html"
                          When I type "PetuniaJones" into element with xpath "//input[@name='username']"
                          And I type "petuniajones@test.com" into element with xpath "//input[@name='email']"
                          And I type "password" into element with xpath "//input[@id='password']"
                          And I type "password" into element with xpath "//input[@id='confirmPassword']"
                          And I click on element with xpath "//input[@id='name']"
                          And I type "Petunia" into element with xpath "//input[@id='firstName']"
                          And I type "Cecila" into element with xpath "//input[@id='middleName']"
                          And I type "Jones" into element with xpath "//input[@id='lastName']"
                          And I click on element with xpath "//span[contains(text(),'Save')]"
                          And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
                          And I click on element with xpath "//button[@id='formSubmit']"
                          Then element with xpath "//div[@class='well form-container container-fluid']" should be displayed







              

          