/**
 * @id EXP_07_11_01_010_RUNTIME_SUPER_METHOD
 * @expect runtime
 * @section 7.11.1
 * @design 运行时验证 super 形式方法调用
 * @note 运行时用例：验证 super.method() 运行时调用超类方法
 */
class Base {
    value(): int {
        return 10
    }
}
class Derived extends Base {
    value(): int {
        return super.value() + 5
    }
}
function main(): void {
    let d: Derived = new Derived()
    if (d.value() != 15) {
        throw new Error("assertion failed: super method result")
    }
    console.log("verified")
}
