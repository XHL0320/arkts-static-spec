/**
 * @id EXP2_17_07_01_001_PASS_SIMPLE_INVOKE_NO_PARAMS
 * @expect compile-pass
 * @section 17.7.1
 * @design 定义无参数的 static $_invoke 方法，使类成为可调用类型。短形式 ClassName() 和显式 ClassName.$_invoke() 均可编译通过。
 * @note 正向用例：验证无参 static $_invoke 的基本定义和两种调用形式均可编译
 */
class SimpleInvoke {
    static $_invoke(): void {
        console.log("SimpleInvoke called")
    }
}

function testSimpleInvoke(): void {
    SimpleInvoke()
    SimpleInvoke.$_invoke()
}
