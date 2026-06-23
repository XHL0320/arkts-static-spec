/**
 * @id EXP_07_11_02_002_PASS_SUPER_METHOD_CALL
 * @expect compile-pass
 * @section 7.11.2
 * @design super 形式：通过 super 调用超类实例方法，候选集合包含超类的实例方法
 * @note 正向用例：验证 super 形式能找到超类中名为 identifier 的实例方法
 */
class Base {
    greet(): string {
        return "Hello from Base"
    }
    getValue(): int {
        return 100
    }
}

class Derived extends Base {
    greet(): string {
        return super.greet()
    }
    getValue(): int {
        return super.getValue() + 50
    }
}
