/**
 * @id EXP_07_10_03_006_RUNTIME_SUPER_GETTER_VALUE
 * @expect runtime
 * @section 7.10.3
 * @design 运行时验证 super getter 调用：子类通过 super getter 访问超类属性值
 * @note 运行时用例：验证 super.property 在 getter 中返回超类值
 */
class Base {
    get value(): int {
        return 100
    }
}
class Derived extends Base {
    get value(): int {
        return super.value + 50
    }
}
function main(): void {
    let d: Derived = new Derived()
    if (d.value != 150) {
        throw new Error("assertion failed: super getter value")
    }
    console.log("verified")
}
