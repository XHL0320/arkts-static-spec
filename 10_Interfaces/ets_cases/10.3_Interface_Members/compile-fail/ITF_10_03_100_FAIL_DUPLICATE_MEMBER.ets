/**
 * @id ITF_10_03_100_FAIL_DUPLICATE_MEMBER
 * @expect compile-fail
 * @section 10.3
 * @design 重复成员名
 * @note 反向用例：验证同名属性和方法编译错误
 */
interface Bad {
    value: number;
    value(): number;
}
