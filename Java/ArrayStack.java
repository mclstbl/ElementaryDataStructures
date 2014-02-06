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

    public void pop(){
        stack.remove(0);
    }

    public void push(char c){
        stack.add(c);
    }

    public boolean isEmpty() {
        if (stack.size() == 0) return true;
        else return false;
    }

    private static PrintStream ps = new PrintStream(System.out);

    public void show(PrintStream p){
        ps.println(stack);
    }
}