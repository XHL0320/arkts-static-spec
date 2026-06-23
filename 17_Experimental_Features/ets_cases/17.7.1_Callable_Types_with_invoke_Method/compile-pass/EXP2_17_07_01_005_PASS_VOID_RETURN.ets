/**
 * @id EXP2_17_07_01_005_PASS_VOID_RETURN
 * @expect compile-pass
 * @section 17.7.1
 * @design 定义返回 void 的 static $_invoke 方法，验证 void 返回类型在类型调用表达式中的使用。
 * @note 正向用例：验证 void 返回的 $_invoke 编译通过
 */
class VoidInvoke {
    static $_invoke(msg: string): void {
        console.log(msg)
    }

    static $_invoke(): void {
        console.log("no message")
    }
}

function testVoidInvoke(): void {
    VoidInvoke("hello")
    VoidInvoke()
    VoidInvoke.$_invoke("world")
}
