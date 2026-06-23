/**
 * @id EXP_07_11_01_009_RUNTIME_STATIC_METHOD
 * @expect runtime
 * @section 7.11.1
 * @design 运行时验证 typeReference 形式静态方法调用
 * @note 运行时用例：验证 ClassName.staticMethod() 运行时正确执行
 */
class Util {
    static process(val: int): int {
        return val * 2
    }
}
function main(): void {
    let r: int = Util.process(21)
    if (r != 42) {
        throw new Error("assertion failed: static method result")
    }
    console.log("verified")
}
