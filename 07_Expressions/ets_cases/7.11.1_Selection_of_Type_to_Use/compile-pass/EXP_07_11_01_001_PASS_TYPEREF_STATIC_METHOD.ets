/**
 * @id EXP_07_11_01_001_PASS_TYPEREF_STATIC_METHOD
 * @expect compile-pass
 * @section 7.11.1
 * @design typeReference 形式：通过类名调用静态方法，typeReference 必须为类类型
 * @note 正向用例：验证 ClassName.method() 语法编译通过
 */
class Calculator {
    static add(a: int, b: int): int {
        return a + b
    }
    static getVersion(): string {
        return "1.0"
    }
}
let sum: int = Calculator.add(3, 4)
let ver: string = Calculator.getVersion()
