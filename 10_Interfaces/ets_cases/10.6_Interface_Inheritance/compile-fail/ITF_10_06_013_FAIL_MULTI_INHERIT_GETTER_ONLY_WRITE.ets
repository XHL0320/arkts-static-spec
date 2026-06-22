/**
 * @id ITF_10_06_013_FAIL_MULTI_INHERIT_GETTER_ONLY_WRITE
 * @expect compile-fail
 * @section 10.6
 * @design 多继承中的 getter-only 属性写入应编译失败
 * @note 反向用例：验证多继承接口中 getter-only 属性写入产生编译错误
 *       规范 §10.6 line 415 — ESE0209
 */
interface I1 {
    get prop3(): number;
}

interface I2 {
    get prop3(): number;
}

interface I3 extends I1, I2 {}

function foo(i3: I3): void {
    i3.prop3 = 5;  // Compile-time error: no setter for prop3
}
