public class overloading{
public static void main(String[] args) {
    add_overload c = new add_overload();
    System.out.println(c.add(5,6));
    System.out.println(c.add(4,5,6));

}
public static class add_overload{
    static int add(int a, int b){
        return a+b;
    }
    static int add(int a, int b, int c) {
        return a+b+c;
    }
}
}
