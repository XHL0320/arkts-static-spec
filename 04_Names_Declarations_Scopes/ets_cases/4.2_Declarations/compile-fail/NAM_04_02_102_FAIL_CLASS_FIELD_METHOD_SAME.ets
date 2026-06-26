/**
 * @id NAM_04_02_102_FAIL_CLASS_FIELD_METHOD_SAME
 * @expect compile-fail
 * @section 4.2
 * @design 类中字段和方法同名
 * @note 反向用例：验证类中字段和方法同名编译错误
 */
class C {
    counter: number = 0;
    counter(): number { return this.counter; }
}
