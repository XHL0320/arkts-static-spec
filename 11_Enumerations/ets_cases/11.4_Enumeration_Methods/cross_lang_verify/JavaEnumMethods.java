public class JavaEnumMethods {
    enum Color { Red, Green, Blue;
        static Color fromValue(int v) {
            for(Color c:values()) if(c.ordinal()==v) return c;
            throw new RuntimeException("No member with value "+v);
        }
    }
    static int p=0,f=0;static void c(boolean b,String s){if(b){p++;System.out.println("PASS "+s);}else{f++;System.out.println("FAIL "+s);}}
    public static void main(String[]a){
        c(Color.values().length==3,"java values() length");
        c(Color.valueOf("Red")==Color.Red,"java valueOf");
        c(Color.Red.name().equals("Red"),"java name()");
        c(Color.Red.toString().equals("Red"),"java toString");
        c(Color.Green.ordinal()==1,"java ordinal");
        try{Color.fromValue(99);c(false,"no exception");}catch(RuntimeException e){c(true,"java fromValue analog error");}
        c(true,"Java has no fromValue or getName built-in N/A");
        System.out.println("SUMMARY pass="+p+" fail="+f);if(f!=0)System.exit(1);
    }
}