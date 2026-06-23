/**
 * @id EXP_07_21_01_002_PASS_SHORT
 * @expect compile-pass
 * @section 7.21.1
 * @design 验证 short 类型后置递增编译通过。
 *         short 是数值类型，支持 ++ 操作符，结果类型为 short。
 * @note 正向用例：short 后置递增编译通过
 */
function test_short_increment(): void {
    let x: short = 1;
    x++;
}
