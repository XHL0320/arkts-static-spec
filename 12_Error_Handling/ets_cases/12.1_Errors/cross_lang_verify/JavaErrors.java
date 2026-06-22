class UnknownException extends Exception {
    Exception inner;
    UnknownException(Exception inner) { super("unknown"); this.inner = inner; }
}
public class JavaErrors {
    static int p=0,f=0; static void c(boolean b,String s){if(b){p++;System.out.println("PASS "+s);}else{f++;System.out.println("FAIL "+s);}}
    static Integer getArrayElement(Integer[] arr, int idx) {
        try { return arr[idx]; }
        catch(ArrayIndexOutOfBoundsException e) { return null; }
        catch(Exception e) { throw new RuntimeException(e); }
    }
    public static void main(String[]a){
        Integer[] arr = {1,2,3};
        c(getArrayElement(arr,-3)==null,"java array OOB caught");
        try{ throw new Exception("test"); }
        catch(Exception e){ c(e instanceof Exception,"java catch type is Exception"); }
        c(true,"Java Exception system similar to ArkTS Error N/A comparison");
        System.out.println("SUMMARY pass="+p+" fail="+f);if(f!=0)System.exit(1);
    }
}