/**
 * @id EXP_07_21_01_006_PASS_DOUBLE
 * @expect compile-pass
 * @section 7.21.1
 * @design 验证 double 类型后置递增编译通过。
 *         double 是数值类型，支持 ++ 操作符。
 * @note 正向用例：double 后置递增编译通过
 */
function test_double_increment(): void {
    let x: double = 3.14;
    x++;
}
