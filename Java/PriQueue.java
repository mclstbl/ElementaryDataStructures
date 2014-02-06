import java.io.PrintStream;

public interface PriQueue {
    public char next();
    public void deleteItem();
    public void insertItem(int i, char c);
    public boolean isEmpty();
    public void show(PrintStream p);
}