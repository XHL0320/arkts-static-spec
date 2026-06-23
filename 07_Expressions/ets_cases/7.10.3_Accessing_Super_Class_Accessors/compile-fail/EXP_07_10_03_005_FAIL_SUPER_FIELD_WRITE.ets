/**
 * @id EXP_07_10_03_005_FAIL_SUPER_FIELD_WRITE
 * @expect compile-fail
 * @section 7.10.3
 * @design 通过 super 给字段赋值：super.field = val 应报编译时错误
 * @note 反向用例：super.identifier 在赋值左侧且 identifier 为字段时编译错误
 */
class Base {
    field: int = 1234
}
class Derived extends Base {
    foo(): void {
        super.field = 42
    }
}
