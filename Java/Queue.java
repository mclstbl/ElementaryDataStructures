import java.io.PrintStream;

public interface Queue {
    public char peek(); // front
    public void dequeue(); // front
    public void enqueue(char ch); // back
    public boolean isEmpty ( ) ;
    public void show(PrintStream p);
}