/**
 * @id NAM_04_03_011_PASS_SUPER_ACCESS
 * @expect compile-pass
 * @section 4.3
 * @design super 关键字访问父类成员
 * @note 正向用例：验证 super 在派生类中访问基类方法（§4.3 行 307）
 */
class Base {
    value(): number { return 42; }
}
class Derived extends Base {
    value(): number { return super.value() + 1; }
}
