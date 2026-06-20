/**
 * @id ITF_10_05_003_PASS_METHOD_WITH_RETURN
 * @expect compile-pass
 * @section 10.5
 * @design 有返回值方法
 * @note 正向用例：验证接口有返回值方法声明
 */
interface Matcher {
    match(pattern: string, target: string): boolean;
}
