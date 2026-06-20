/**
 * @id ITF_10_05_004_PASS_METHOD_VOID
 * @expect compile-pass
 * @section 10.5
 * @design void 方法
 * @note 正向用例：验证 void 返回值方法声明
 */
interface Logger {
    log(message: string): void;
    error(message: string): void;
}
