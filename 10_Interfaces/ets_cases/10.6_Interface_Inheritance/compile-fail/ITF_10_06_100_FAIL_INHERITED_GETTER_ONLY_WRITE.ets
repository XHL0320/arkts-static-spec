/**
 * @id ITF_10_06_100_FAIL_INHERITED_GETTER_ONLY_WRITE
 * @expect compile-fail
 * @section 10.6
 * @design 继承的 getter-only 属性写入应编译失败
 * @note 反向用例：验证通过继承获取的 getter-only 属性写入产生编译错误
 *       规范 §10.6 line 415
 */
interface I1 {
    get prop3(): number;
}
interface I2 extends I1 {}
function test(i2: I2): void {
    i2.prop3 = 5;
}
