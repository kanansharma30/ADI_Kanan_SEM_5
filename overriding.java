public class overriding {
    public static void main(String[] args) {
        overload a = new overload();
        a.student();
        example b = new example();
        b.student();

    }
    public static class overload{
        void student(){
            System.out.println("Study");
        }
    }

    public static class example extends overload{
        void student(){
            System.out.println("Activity");
        }
    }
}
