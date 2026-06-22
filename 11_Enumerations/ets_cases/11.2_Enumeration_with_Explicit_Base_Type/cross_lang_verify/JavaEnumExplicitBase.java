public class JavaEnumExplicitBase {
    enum ByteVals { A(0), B(1); int v; ByteVals(int v){this.v=v;} int v(){return v;} }
    enum DoubleVals { A(0), B(1); int v; DoubleVals(int v){this.v=v;} int v(){return v;} }
    static int p=0,f=0; static void c(boolean b,String s){if(b){p++;System.out.println("PASS "+s);}else{f++;System.out.println("FAIL "+s);}}
    public static void main(String[]a){
        c(ByteVals.A.v()==0,"java enum explicit byte analog");
        c(ByteVals.B.v()==1,"java enum explicit int analog");
        c(true,"Java enum base type must be explicit via constructor, not compile-time N/A");
        System.out.println("SUMMARY pass="+p+" fail="+f);if(f!=0)System.exit(1);
    }
}