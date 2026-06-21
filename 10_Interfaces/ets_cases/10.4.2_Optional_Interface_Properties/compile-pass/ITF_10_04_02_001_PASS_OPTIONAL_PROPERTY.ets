/**
 * @id ITF_10_04_006_PASS_OPTIONAL_PROPERTY
 * @expect compile-pass
 * @section 10.4
 * @design 可选属性
 * @note 正向用例：验证 ? 可选属性声明
 */
interface Options {
    required: string;
    optional?: number;
}
