up vote 17 down vote favorite
8
I am trying to implement a function below:

Given a target sum, populate all subsets, whose sum is equal to the target sum, from an int array.

For example:

Target sum is 15.

An int array is { 1, 3, 4, 5, 6, 15 }.

Then all satisfied subsets whose sum is 15 are as follows:

15 = 1+3+5+6
15 = 4+5+6
15 = 15
I am using java.util.Stack class to implement this function, along with recursion.

GetAllSubsetByStack class

import java.util.Stack;

public class GetAllSubsetByStack {

    /** Set a value for target sum */
    public static final int TARGET_SUM = 15;

    private Stack<Integer> stack = new Stack<Integer>();

    /** Store the sum of current elements stored in stack */
    private int sumInStack = 0;

    public void populateSubset(int[] data, int fromIndex, int endIndex) {

        /*
        * Check if sum of elements stored in Stack is equal to the expected
        * target sum.
        * 
        * If so, call print method to print the candidate satisfied result.
        */
        if (sumInStack == TARGET_SUM) {
            print(stack);
        }

        for (int currentIndex = fromIndex; currentIndex < endIndex; currentIndex++) {

            if (sumInStack + data[currentIndex] <= TARGET_SUM) {
                stack.push(data[currentIndex]);
                sumInStack += data[currentIndex];

                /*
                * Make the currentIndex +1, and then use recursion to proceed
                * further.
                */
                populateSubset(data, currentIndex + 1, endIndex);
                sumInStack -= (Integer) stack.pop();
            }
        }
    }

    /**
    * Print satisfied result. i.e. 15 = 4+6+5
    */

    private void print(Stack<Integer> stack) {
        StringBuilder sb = new StringBuilder();
        sb.append(TARGET_SUM).append(" = ");
        for (Integer i : stack) {
            sb.append(i).append("+");
        }
        System.out.println(sb.deleteCharAt(sb.length() - 1).toString());
    }
}
Main class

public class Main {

    private static final int[] DATA = { 1, 3, 4, 5, 6, 2, 7, 8, 9, 10, 11, 13,
        14, 15 };

    public static void main(String[] args) {
        GetAllSubsetByStack get = new GetAllSubsetByStack();
        get.populateSubset(DATA, 0, DATA.length);
    }
}
Output in Console is as follows:

15 = 1+3+4+5+2
15 = 1+3+4+7
15 = 1+3+5+6
15 = 1+3+2+9
15 = 1+3+11
15 = 1+4+2+8
15 = 1+4+10
15 = 1+5+2+7
15 = 1+5+9
15 = 1+6+8
15 = 1+14
15 = 3+4+6+2
15 = 3+4+8
15 = 3+5+7
15 = 3+2+10
15 = 4+5+6
15 = 4+2+9
15 = 4+11
15 = 5+2+8
15 = 5+10
15 = 6+2+7
15 = 6+9
15 = 2+13
15 = 7+8
15 = 15
Please help me with the following 2 things:

How can I improve this code to reduce the times for recursion? Is sorting the int array (from high to low) before recursion a better way?

Is there a way to improve the code without using recursion?
