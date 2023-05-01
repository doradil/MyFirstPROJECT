@isTest
private class CreateChildCaseHandlerTest {
  @isTest
  static void testHighPriorityCaseNewChildCaseCreation() {
    //Arrange
    List<Case> newCases = TestDataFactory.createCases(3, 'High');
    //Act
    Test.startTest();
    insert newCases;
    Test.stopTest();

    //Assert
    List<Case> newChildCases = [
      SELECT Subject, ParentId, Priority, Parent.CaseNumber
      FROM Case
      WHERE ParentId IN :newCases
    ];
    // check the childcases size is 3
    Assert.areEqual(3, newChildCases.size());

    for (Case each : newChildCases) {
      Assert.areEqual('High', each.Priority);
      // subject of child is : Child Case for Case #ParentCaseNumberHere'
      String expectedSubject = 'Child Case for Case #' + each.Parent.CaseNumber;
      Assert.areEqual(expectedSubject, each.Subject);
    }
  }
  /**
 *  Subject = 'Child Case for Case #' + each.CaseNumber,
    ParentId = each.Id,
    Priority = 'High'
 */

  @isTest
  static void testNotHighPriorityCaseNoNewChildCase() {
    //Arrange
    // create low priority cases
    List<Case> newCases = TestDataFactory.createCases(3, 'Low');
    // create medium priority cases
    List<Case> newCases2 = TestDataFactory.createCases(2, 'Medium');
    // combine them all
    newCases.addAll(newCases2);

    //Act
    Test.startTest();
    insert newCases;
    Test.stopTest();

    //Assert
    List<Case> newChildCases = [
      SELECT Subject, ParentId, Priority, Parent.CaseNumber
      FROM Case
      WHERE ParentId IN :newCases
    ];
    
    // check the childcases size is 0
    Assert.areEqual(0, newChildCases.size());
  }

  @isTest
  static void testHighPriorityCaseNewChildCaseCreationCSV_File() {
    //Arrange

    List<sObject> newCases = Test.loadData(Case.sObjectType, 'caseData');

    //Act
    // Test.startTest();
    // insert newCases ;
    // Test.stopTest() ;

    //Assert
    List<Case> newChildCases = [
      SELECT Subject, ParentId, Priority, Parent.CaseNumber
      FROM Case
      WHERE ParentId IN :newCases
    ];
    // check the childcases size is 10
    Assert.areEqual(10, newChildCases.size());

    for (Case each : newChildCases) {
      Assert.areEqual('High', each.Priority);
      // subject of child is : Child Case for Case #ParentCaseNumberHere'
      String expectedSubject = 'Child Case for Case #' + each.Parent.CaseNumber;
      Assert.areEqual(expectedSubject, each.Subject);
    }
  }
  //WE SHOULD NOT RELY ON EXISTING DATA IN THE ORG !!!
  //WORKING WITH EXISTING DATA IN THE ORG WILL CAUSE UNEXPECTED POTENTIAL
  @isTest(SeeAllData=true)
  static void testSeeAllData() {
    // Now we have access to all org data we are connected to
    // lets write a simple query to get all cases
    List<Case> allCases = [SELECT Subject, CaseNumber, Priority FROM Case];

    System.debug('allCases.size() value is : ' + allCases.size());
  }
}