/**
 * @id EXP_07_21_01_005_PASS_FLOAT
 * @expect compile-pass
 * @section 7.21.1
 * @design 验证 float 类型后置递增编译通过。
 *         float 是数值类型，支持 ++ 操作符。
 * @note 正向用例：float 后置递增编译通过
 */
function test_float_increment(): void {
    let x: float = 1.5 as float;
    x++;
}
