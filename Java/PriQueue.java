import java.io.PrintStream;

public interface PriQueue {
    public char next (); // highest priority
    public void deleteItem (); // highest priority
    public void insertItem(int i, char c); // int priority , then alphabetical
    public boolean isEmpty ( ) ;
    public void show(PrintStream p);
}