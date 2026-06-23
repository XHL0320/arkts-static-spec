// Java Runtime Test - 对应 2.10 Comments
// 测试重点：单行注释、多行注释不影响代码执行
// 覆盖 2 个 runtime 测试场景 (011-012)

public class CommentsRuntimeTest {
    public static void main(String[] args) {
        int totalAssertions = 0;

        System.out.println("[Java] Comments Runtime Test");
        System.out.println("");

        // 011: 单行注释不影响代码执行
        // This is a comment
        int x1 = 1;
        assert x1 == 1 : "011: line comment failed";
        totalAssertions++;
        System.out.println("[Java] 011 line comment: PASSED (" + x1 + ")");

        // Another comment
        int x2 = 2;
        assert x2 == 2 : "011: line comment failed";
        totalAssertions++;
        System.out.println("[Java] 011 line comment: PASSED (" + x2 + ")");

        int x3 = x1 + x2; // Comment after code
        assert x3 == 3 : "011: line comment after code failed";
        totalAssertions++;
        System.out.println("[Java] 011 line comment after code: PASSED (" + x3 + ")");

        // 012: 多行注释不影响代码执行
        /* This is a multiline comment */
        int x4 = 1;
        assert x4 == 1 : "012: multiline comment failed";
        totalAssertions++;
        System.out.println("[Java] 012 multiline comment: PASSED (" + x4 + ")");

        /*
         * This is a multiline comment
         * that spans multiple lines
         */
        int x5 = 2;
        assert x5 == 2 : "012: multiline comment failed";
        totalAssertions++;
        System.out.println("[Java] 012 multiline comment: PASSED (" + x5 + ")");

        int x6 = x4 + x5 /* Comment */ + 3;
        assert x6 == 6 : "012: inline multiline comment failed";
        totalAssertions++;
        System.out.println("[Java] 012 inline multiline comment: PASSED (" + x6 + ")");

        System.out.println("=== Java Comments Runtime Test PASSED ===");
        System.out.println("Total assertions passed: " + totalAssertions);
    }
}
