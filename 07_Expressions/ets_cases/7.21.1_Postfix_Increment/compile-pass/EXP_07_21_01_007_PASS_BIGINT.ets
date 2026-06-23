/**
 * @id EXP_07_21_01_007_PASS_BIGINT
 * @expect compile-pass
 * @section 7.21.1
 * @design 验证 bigint 类型后置递增编译通过。
 *         bigint 支持 ++ 操作符（与数值类型并列受支持）。
 * @note 正向用例：bigint 后置递增编译通过
 */
function test_bigint_increment(): void {
    let x: bigint = 1n;
    x++;
}
