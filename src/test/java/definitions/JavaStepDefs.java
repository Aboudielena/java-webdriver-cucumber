package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class JavaStepDefs {

    @And("I say {string}")
    public void iSay(String message) {
        System.out.println(message);
    }

    @And("I perform actions with {string} and {string}")
    public void iPerformActionsWithAnd(String str1, String str2) {
        System.out.println("str1: " + str1);
        System.out.println("str2: " + str2);
        System.out.println(str1.equals("var1"));
    }

    @Given("I say Hello world!")
    public void iSayHelloWorld() {
        String message = "Hello world!";
        System.out.println(message);
        System.out.println("Hey there! " + message);

        System.out.println(message.toUpperCase());
        System.out.println(message); }


    @And("I work with arrays")
    public void iWorkWithArrays() {
        int [] nums = {2, 5, 7, 8, 9, 11};
        System.out.println(nums);
        for (int i : nums)
            System.out.print(i + " ");

        String [] fruits = {"kiwi", "apple", "appricot", "peach"};
        System.out.println(fruits);
        for (String fruit : fruits)
            System.out.print(fruit + " ");

        System.out.println(fruits[0]);

    }
}


