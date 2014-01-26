import java.io.*;
import java.lang.*;
import java.lang.ArrayIndexOutOfBoundsException;
import java.lang.Character;
import java.lang.Exception;
import java.lang.System;
import java.lang.Throwable;
import java.util.ArrayList;

public class ArrayStack implements Stack {

    ArrayList<Character> stack = new ArrayList<Character>();

    public char top() {
        return stack.get(0);
    }

    //remove the last element( remove the element of last index)
    public void pop (){
        stack.remove(0);
    }

    //add element into the stack
    public void push (char c){
        stack.add(c);
    }

    //check if the size is 0
    public boolean isEmpty() {
        if (stack.size() == 0) return true;
        else return false;
    }

    private static PrintStream ps = new PrintStream(System.out);

    public void show(PrintStream p){
        ps.println(stack);
    }
}