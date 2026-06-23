/**
 * @id EXP_07_29_01_008_FAIL_BIGINT_NUMERIC_MIXED
 * @expect compile-fail
 * @section 7.29.1
 * @design bigint 与 int 混合位运算应产生编译时错误
 * @note 反向用例：验证 bigint 与 int 进行 & 运算时产生 compile-time error
 *       spec 规定：一个操作数为 bigint，另一个为数值类型时编译错误
 */
function main(): void {
    let a: bigint = 60n;
    let b: int = 13;
    let c: int = a & b;
    console.log("result: " + c);
}
