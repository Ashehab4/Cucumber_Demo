package stepdefs;



import java.util.List;

import org.junit.Assert;

import TMKN.CucumberProject.Calculator;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;


public class CalcStepdef {
	int result;
	@Given("I have a calculator")
	public void i_have_a_calculator() {
	    // Write code here that turns the phrase above into concrete actions
	    
	}


	@When("I add number1 as {int} and number2 as {int}")
	public void i_add_number1_as_and_number2_as(int int1, int int2) {
	    // Write code here that turns the phrase above into concrete actions
		 result = Calculator.Add(int1, int2);
	   
	}

	@Then("I verify the {int}")
	public void i_verify_the(int expResult) {
	    // Write code here that turns the phrase above into concrete actions
		Assert.assertEquals(expResult, result);
	}
	@When("I add Below")
	public int i_add_Below(List<Integer> numbers) {
		int sum = 0 ;
		for (int number:numbers) {
			sum += number;
		}
		return sum;
	}

}
