**Selenium Automation Practice Repository**

**Overview**

This repository contains a set of Selenium WebDriver scripts for automated testing. It serves as a practical playground for honing your Selenium skills and understanding various automation concepts.

**Table of Contents**

+ Features

+ Prerequisites

+ Setup

+ Usage


**Features**

Basic Selenium WebDriver scripts
Examples of test cases and scenarios
Utilizes ruby/capybara, site_prism and rspec for scripting

**Prerequisites**

+ Make sure you have the following installed on your machine:

1. Chromedriver [Download](https://googlechromelabs.github.io/chrome-for-testing/)
  +   Make sure to download the driver version corresponding to your chrome version.

3. Ruby language [Download](https://rubyinstaller.org/downloads/)

**Setup**

1. Make sure the "path" enviroment variable exists under System Variables, then edit or create it 
and add the path for the downloaded ChromeWebDriver

2. After navigating to the desired folder, insert this on your terminal do clone the repository:
```
git clone https://github.com/GabrielSilvaAraujo/SeleniumAutomation.git
```
3. Install dependencies:
- Run the following on your terminal inside the SeleniumAutomation folder
```
gem install selenium-webdriver
gem install webdrivers
gem install bundler
bundle install
```
**Usage**

1. Navigate to the project directory and run the tests with the command:
```
  cucumber -p homolog
```
2. View the test results and logs.

**Conclusion**
Feel free to add any comments or suggestions on how to improve this repository or the automation itself, any feedback will be gladly received. 
   

