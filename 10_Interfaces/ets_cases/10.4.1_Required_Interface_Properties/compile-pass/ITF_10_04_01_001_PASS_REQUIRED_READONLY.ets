/**
 * @id ITF_10_04_01_001_PASS_REQUIRED_READONLY
 * @expect compile-pass
 * @section 10.4.1
 * @design 必需属性-readonly
 * @note 正向用例：验证 readonly 必需属性
 */
interface ReadOnly {
    readonly id: number;
}
