import java.io.PrintStream;

public interface Stack {
    public char top();
    public void pop();
    public void push(char c);
    public boolean isEmpty();
    public void show(PrintStream p);
}