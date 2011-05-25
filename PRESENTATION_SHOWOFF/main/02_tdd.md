!SLIDE bullets incremental
# TDD
## (reminder/short intro)

* write tests before you code (let them drive the code)
* red/green/refactor
* YAGNI

!SLIDE bullets incremental
# Some issues with TDD
## practical issues of the developers
* where to start
* what to test and what not to test
* how much to test in one go
* how to understand why a test fails

!SLIDE bullets incremental
# More issues with TDD

## organizational issue

* (hopefully) written acceptance criteria on story card
* (maybe, some kind of) acceptance criteria in the code
* **duplication or divergence**

!SLIDE bullets incremental
# divergence

* the tests in the code do not correspond to the acceptance criteria in
  a user story

* why not?

* the are much lower level and to abstract to match business logic

!SLIDE bullets incremental
# duplication

* the tests in the code do test the business logic, and thus do, to some 
  extent, represent acceptance criteria. But they can not be understod
  by stakeholders

* why not?

* the Stakeholers are non-technical and can not make sense out of Unit
  Tests etc.

!SLIDE bullets incremental
# We don't know what we are doing!

* because developers and stakeholders have two different view points
* because we don't know what to test and where to start
* because we don't understand what it means when a test fails
