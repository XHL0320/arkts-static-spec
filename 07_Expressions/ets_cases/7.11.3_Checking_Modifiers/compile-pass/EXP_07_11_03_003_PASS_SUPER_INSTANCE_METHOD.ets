/**
 * @id EXP_07_11_03_003_PASS_SUPER_INSTANCE_METHOD
 * @expect compile-pass
 * @section 7.11.3
 * @design super.identifier 形式：超类方法非 abstract 且非 static，修饰符检查通过
 * @note 正向用例：验证 super 调用的方法不能是 abstract 或 static，本用例满足条件
 */
class Base {
    greet(): string {
        return "Base"
    }
    compute(x: int): int {
        return x * 2
    }
}

class Derived extends Base {
    greet(): string {
        return super.greet() + "+Derived"
    }
    compute(x: int): int {
        return super.compute(x) + 1
    }
}
