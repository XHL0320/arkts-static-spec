/**
 * @id ITF_10_06_011_FAIL_INHERITED_SETTER_ONLY_READ
 * @expect compile-fail
 * @section 10.6
 * @design 继承的 setter-only 属性读取应编译失败
 * @note 反向用例：验证通过继承获取的 setter-only 属性读取产生编译错误
 *       规范 §10.6 line 413
 */
interface I1 {
    set prop2(p: number);
}
interface I2 extends I1 {}
function test(i2: I2): void {
    let x = i2.prop2;
}
