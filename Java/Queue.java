import java.io.PrintStream;

public interface Queue {
    public char peek();
    public void dequeue();
    public void enqueue(char ch);
    public boolean isEmpty();
    public void show(PrintStream p);
}