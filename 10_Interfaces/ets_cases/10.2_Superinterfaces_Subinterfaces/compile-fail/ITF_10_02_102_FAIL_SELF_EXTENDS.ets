/**
 * @id ITF_10_02_102_FAIL_SELF_EXTENDS
 * @expect compile-fail
 * @section 10.2
 * @design 自继承
 * @note 反向用例：验证接口自继承编译错误
 */
interface Self extends Self {}
