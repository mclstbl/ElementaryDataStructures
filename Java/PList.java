import java.io.PrintStream;
import java.lang.ArrayIndexOutOfBoundsException;
import java.lang.Character;
import java.lang.Exception;
import java.lang.Throwable;
import java.util.ArrayList;

public class PList implements PriQueue {
    private int hd;  //head
    private int priority;

    private PList tl;  //tail

    PList(final int a, final int b, final PList ll) {
        this.hd = a;
        this.priority = b;
        this.tl = ll;
    }

    public char next () {
     // highest priority
        if (this.priority < this.tl.priority && this.tl.hd =="\0") return this.hd;
        else (this.priority > this.tl.priority) this.tl.next();

    }
    public void deleteItem (){
        this.hd = tl.hd;
        this.tl = tl.tl;
    }
    public void insertItem(int i, char c){
        if(this.priority < i){
            this.tl = this;
            this.hd = i;
        }
        else{
            this.tl.insertItem(i,c);
        }
    }
    public boolean isEmpty ( ){
        if (this.hd == "\0") return true;
        else return false;
    }

    PrintStream ps = new PrintStream(System.out);
    public void show(PrintStream p){
        ps.println(tl);
    }
}