/**
 * @id EXP_07_10_03_001_PASS_SUPER_GETTER
 * @expect compile-pass
 * @section 7.10.3
 * @design 通过 super 调用超类的 getter：super.property 在子类 getter 中访问超类访问器
 * @note 正向用例：验证 super.identifier 可用于访问超类 getter
 */
class Base {
    get value(): int {
        return 42
    }
}
class Derived extends Base {
    get value(): int {
        return super.value + 1
    }
}
let d: Derived = new Derived()
let v: int = d.value
