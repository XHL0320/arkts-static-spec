/**
 * @id ITF_10_04_01_100_FAIL_REQUIRED_NOT_IMPLEMENTED
 * @expect compile-fail
 * @section 10.4.1
 * @design 必需属性未被类实现应报错
 * @note 反向用例：类未实现接口必需属性应编译错误
 */
interface Required {
    id: number;
}
class Impl implements Required {}
