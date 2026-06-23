/**
 * @id EXP_07_10_03_004_FAIL_SUPER_FIELD_READ
 * @expect compile-fail
 * @section 7.10.3
 * @design 通过 super 读取字段：super.field 用于访问超类字段应报编译时错误
 * @note 反向用例：super.identifier 中 identifier 为字段时编译错误
 */
class Base {
    field: int = 1234
}
class Derived extends Base {
    foo(): void {
        let v: int = super.field
    }
}
