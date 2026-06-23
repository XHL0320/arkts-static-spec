/**
 * @id ITF_10_04_01_005_PASS_SETTER_ONLY
 * @expect compile-pass
 * @section 10.4
 * @design setter-only 属性
 * @note 正向用例：验证只有 setter 的属性声明
 */
interface Writable {
    set value(v: number);
}
