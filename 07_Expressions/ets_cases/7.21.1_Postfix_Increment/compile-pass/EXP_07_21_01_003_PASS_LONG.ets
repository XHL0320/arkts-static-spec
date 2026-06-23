/**
 * @id EXP_07_21_01_003_PASS_LONG
 * @expect compile-pass
 * @section 7.21.1
 * @design 验证 long 类型后置递增编译通过。
 *         long 是数值类型，支持 ++ 操作符。
 * @note 正向用例：long 后置递增编译通过
 */
function test_long_increment(): void {
    let x: long = 10000000000;
    x++;
}
