/**
 * @id ITF_10_04_101_FAIL_SETTER_ONLY_READ
 * @expect compile-fail
 * @section 10.4
 * @design 读取 setter-only 属性
 * @note 反向用例：验证读取 setter-only 属性编译错误
 */
interface Writable {
    set value(v: number);
}
function test(w: Writable): void {
    let x: number = w.value;
}
