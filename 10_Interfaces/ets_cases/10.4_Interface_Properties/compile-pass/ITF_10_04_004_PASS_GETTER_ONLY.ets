/**
 * @id ITF_10_04_004_PASS_GETTER_ONLY
 * @expect compile-pass
 * @section 10.4
 * @design getter-only 属性
 * @note 正向用例：验证只有 getter 的属性声明
 */
interface Readable {
    get value(): number;
}
