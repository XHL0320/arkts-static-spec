/**
 * Java equivalent of ArkTS 17.10.2 Native Methods tests.
 * Java uses `native` for JNI methods inside classes.
 */
class NativeMethodBase {
    native String fetchData();
}

class NativeMethodChild extends NativeMethodBase {
    @Override
    String fetchData() {
        return "child implementation";
    }
}

class ServiceWithNative {
    native String platformCall();

    String regularCall() {
        return "regular result";
    }

    int getStatus() {
        return 200;
    }
}

public class NativeMethodTest {
    // PASS: basic native method
    // PASS: static native
    static native void initSystem();

    // PASS: private native
    private native int internalCompute(int data);

    // Generic native method
    // Note: Java doesn't support generic native methods in the same way as ArkTS,
    // but native methods can use generic types in their signature
    native <T> T getValue(String key);

    public static void main(String[] args) {
        // Test 1: Class with native methods can be instantiated
        ServiceWithNative svc = new ServiceWithNative();
        String r1 = svc.regularCall();
        assert "regular result".equals(r1) : "Expected 'regular result' but got " + r1;
        int r2 = svc.getStatus();
        assert r2 == 200 : "Expected 200 but got " + r2;
        System.out.println("native method class works: " + r1 + " " + r2);

        // Test 2: Override native method
        NativeMethodChild child = new NativeMethodChild();
        String result = child.fetchData();
        assert "child implementation".equals(result) : "Expected 'child implementation' but got " + result;
        System.out.println("override works: " + result);

        System.out.println("All Java native method tests passed");
    }
}
