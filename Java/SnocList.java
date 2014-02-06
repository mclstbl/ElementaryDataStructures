import java.io.*;
import java.lang.ArrayIndexOutOfBoundsException;
import java.lang.Character;
import java.lang.Exception;
import java.lang.Throwable;
import java.util.ArrayList;

public class SnocList implements Queue{

    private char c ;

    private SnocList l ;

    SnocList(char c, SnocList l) {
        this.c = c;
        this.l = l;
    }

    public char peek(){
    // front
        return this.c;
    }

    public void dequeue(){
    // front
        this = l;
        this.c = "\0"
    }

    public void enqueue(char ch){
    // back
        if (this.l.c == "\0") this.l.c = ch;
        else this.l.enqueue(ch);
    }


    public boolean isEmpty(){
        if (this.c != '\0') return true;
        else return false;
    }
}