@IsTest
public with sharing class HelloWorldTest {

    // Uses the /dw/helloWorld.dwl script to log a message
    @IsTest
    public static void helloWorldStaticInvocation() {
        DataWeave.Script script = new DataWeaveScriptResource.helloWorld();
        DataWeave.Result result = script.execute(new Map<String, Object>());

        // DW log output becomes the value when there are no other results
        Assert.areEqual('"Hello World"', result.getValueAsString());
    }

    // Uses the /dw/helloWorld.dwl script to log a message
    @IsTest
    public static void helloWorldDynamicInvocation() {
        DataWeave.Script script = DataWeave.Script.createScript('helloWorld');
        DataWeave.Result result = script.execute(new Map<String, Object>());

        // DW log output becomes the value when there are no other results
        Assert.areEqual('"Hello World"', result.getValueAsString());
    }
}