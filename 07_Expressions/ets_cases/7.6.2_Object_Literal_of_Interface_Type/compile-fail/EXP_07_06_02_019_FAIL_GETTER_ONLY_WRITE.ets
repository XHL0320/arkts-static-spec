/**
 * @id EXP_07_06_02_019_FAIL_GETTER_ONLY_WRITE
 * @expect compile-fail
 * @section 7.6.2
 * @design 写入 getter-only 属性：getter-only 属性只读，赋值应编译时错误
 * @note 反向用例：验证 getter-only 属性不可写入
 */
interface I2 {
    get attr(): number
}
function test(): void {
    const i2: I2 = {attr: 42}
    i2.attr = 666
}
