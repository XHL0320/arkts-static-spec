/**
 * @id ITF_10_04_002_FAIL_GETTER_ONLY_ASSIGN
 * @expect compile-fail
 * @section 10.4
 * @design 对 getter-only 属性赋值
 * @note 反向用例：验证对 getter-only 属性赋值编译错误
 */
interface Readable {
    get value(): number;
}
function test(r: Readable): void {
    r.value = 42;
}
