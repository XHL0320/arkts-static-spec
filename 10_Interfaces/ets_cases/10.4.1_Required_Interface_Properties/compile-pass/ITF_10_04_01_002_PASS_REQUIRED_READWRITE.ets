/**
 * @id ITF_10_04_01_002_PASS_REQUIRED_READWRITE
 * @expect compile-pass
 * @section 10.4
 * @design 必需属性-读写
 * @note 正向用例：验证可读写必需属性
 */
interface Config {
    name: string;
    version: number;
}
