/**
 * @id ITF_10_04_02_002_PASS_OPTIONAL_UNDEFINED
 * @expect compile-pass
 * @section 10.4
 * @design 可选属性-explicit undefined
 * @note 正向用例：验证显式 T|undefined 可选属性
 */
interface Options2 {
    optional: number | undefined;
}
