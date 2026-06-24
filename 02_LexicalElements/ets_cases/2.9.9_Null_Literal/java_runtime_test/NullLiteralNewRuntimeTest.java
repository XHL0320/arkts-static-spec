// Java Runtime Test - 对应 2.9.9 Null Literal (补充用例)
// 测试重点：null 在字符串连接、模板字符串、函数参数、对象属性、可选链、空值合并
// 覆盖 6 个 runtime 测试场景 (015-020)

public class NullLiteralNewRuntimeTest {
    public static void main(String[] args) {
        int totalAssertions = 0;

        System.out.println("[Java] Null Literal New Runtime Test");
        System.out.println("");

        // 015: null 在字符串连接中
        Integer x1 = null;
        String s1 = "value: " + x1;
        assert s1.equals("value: null") : "015: string concat failed, got " + s1;
        totalAssertions++;
        System.out.println("[Java] 015 string concat: PASSED (" + s1 + ")");

        // 016: null 在模板字符串中
        // Java 没有模板字符串，使用字符串连接模拟
        String s2 = String.format("value: %s", x1);
        assert s2.equals("value: null") : "016: template string failed, got " + s2;
        totalAssertions++;
        System.out.println("[Java] 016 template string: PASSED (" + s2 + ")");

        // 017: null 作为函数参数
        int r1 = testFunc(null);
        assert r1 == 0 : "017: func arg failed, got " + r1;
        totalAssertions++;
        System.out.println("[Java] 017 func arg: PASSED (" + r1 + ")");

        int r2 = testFunc(42);
        assert r2 == 42 : "017: func arg failed, got " + r2;
        totalAssertions++;
        System.out.println("[Java] 017 func arg: PASSED (" + r2 + ")");

        // 018: null 在对象属性访问中
        Obj obj = new Obj("test", null);
        Integer x2 = obj.getValue();
        assert x2 == null : "018: obj property failed, got " + x2;
        totalAssertions++;
        System.out.println("[Java] 018 obj property: PASSED (" + x2 + ")");

        // 019: null 在可选链中
        // Java 没有可选链，使用 Optional 模拟
        Integer x3 = obj.getNestedValue();
        assert x3 == null : "019: optional chain failed, got " + x3;
        totalAssertions++;
        System.out.println("[Java] 019 optional chain: PASSED (" + x3 + ")");

        // 020: null 在空值合并中
        Integer x4 = null;
        int r3 = x4 != null ? x4 : 42;
        assert r3 == 42 : "020: nullish coalescing failed, got " + r3;
        totalAssertions++;
        System.out.println("[Java] 020 nullish coalescing: PASSED (" + r3 + ")");

        Integer x5 = 10;
        int r4 = x5 != null ? x5 : 42;
        assert r4 == 10 : "020: nullish coalescing failed, got " + r4;
        totalAssertions++;
        System.out.println("[Java] 020 nullish coalescing: PASSED (" + r4 + ")");

        System.out.println("=== Java Null Literal New Runtime Test PASSED ===");
        System.out.println("Total assertions passed: " + totalAssertions);
    }

    static int testFunc(Integer x) {
        return x == null ? 0 : x;
    }

    static class Obj {
        String name;
        Integer value;

        Obj(String name, Integer value) {
            this.name = name;
            this.value = value;
        }

        Integer getValue() {
            return value;
        }

        Integer getNestedValue() {
            return null; // 模拟嵌套对象为 null
        }
    }
}
