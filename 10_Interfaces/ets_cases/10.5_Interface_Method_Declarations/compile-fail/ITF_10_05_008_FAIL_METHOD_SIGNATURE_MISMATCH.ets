/**
 * @id ITF_10_05_008_FAIL_METHOD_SIGNATURE_MISMATCH
 * @expect compile-fail
 * @section 10.5
 * @design 方法签名不匹配
 * @note 反向用例：验证接口方法签名与实现不匹配
 */
interface Named {
    getName(): string;
}
class BadImpl implements Named {
    getName(): number { return 42; }
}
