/**
 * Java: Verify that new C() calls constructor, not static method.
 * This is the natural Java behavior and matches ArkTS spec:
 * "new C(args) calls constructor, not $_invoke/$_instantiate"
 */
class NewVsStatic {
    String tag;

    NewVsStatic() {
        this.tag = "constructed";
    }

    static NewVsStatic create() {
        NewVsStatic obj = new NewVsStatic();
        obj.tag = "invoked";
        return obj;
    }
}

public class JavaNewVsStatic {
    public static void main(String[] args) {
        // new always calls constructor
        NewVsStatic objNew = new NewVsStatic();
        assert objNew.tag.equals("constructed") : "new should use constructor";

        // static method call
        NewVsStatic objCall = NewVsStatic.create();
        assert objCall.tag.equals("invoked") : "static method should set invoked";

        System.out.println("PASS: new vs static method distinction verified");
    }
}
