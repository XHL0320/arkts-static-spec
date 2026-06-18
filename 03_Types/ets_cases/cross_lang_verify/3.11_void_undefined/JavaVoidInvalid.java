// 3.11 Type void or undefined - Java 编译失败行为验证
// 这些写法在 ArkTS 中合法，但 Java 中非法

import java.util.List;

public class JavaVoidInvalid {
    public static void main(String[] args) {
        // Java 不允许 void 变量
        void v;

        // Java 不允许 void 作泛型实参
        List<void> list;

        // Java 没有 undefined 字面量
        Object u = undefined;
    }
}