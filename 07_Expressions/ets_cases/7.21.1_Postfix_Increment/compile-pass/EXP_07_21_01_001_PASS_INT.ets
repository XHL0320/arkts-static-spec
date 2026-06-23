/**
 * @id EXP_07_21_01_001_PASS_INT
 * @expect compile-pass
 * @section 7.21.1
 * @design 验证 int 类型后置递增编译通过。
 *         int 是数值类型，支持 ++ 操作符。
 * @note 正向用例：int 后置递增编译通过
 */
function test_int_increment(): void {
    let x: int = 5;
    x++;
}
