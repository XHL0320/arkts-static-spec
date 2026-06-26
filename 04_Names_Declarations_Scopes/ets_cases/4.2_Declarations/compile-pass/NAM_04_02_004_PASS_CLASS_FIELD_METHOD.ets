/**
 * @id NAM_04_02_004_PASS_CLASS_FIELD_METHOD
 * @expect compile-pass
 * @section 4.2
 * @design 类字段和方法不同名
 * @note 正向用例：验证类中字段和方法不同名时共存
 */
class B {
    field: number = 0;
    method(): void {}
}
