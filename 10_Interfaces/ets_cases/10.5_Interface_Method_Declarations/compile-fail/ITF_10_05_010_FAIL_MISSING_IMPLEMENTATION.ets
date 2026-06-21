/**
 * @id ITF_10_05_010_FAIL_MISSING_IMPLEMENTATION
 * @expect compile-fail
 * @section 10.5
 * @design 缺少实现
 * @note 反向用例：验证 implements 接口但缺少方法实现编译错误
 */
interface Named {
    getName(): string;
}
class Anonymous implements Named {}
