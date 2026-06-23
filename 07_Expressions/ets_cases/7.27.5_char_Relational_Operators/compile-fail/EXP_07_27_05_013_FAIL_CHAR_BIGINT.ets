/**
 * @id EXP_07_27_05_013_FAIL_CHAR_BIGINT
 * @expect compile-fail
 * @section 7.27.5
 * @design 验证 char 与 bigint 关系运算产生编译时错误
 * @note 反向用例：bigint 不属于数值类型 hierarchy，char 与 bigint 应报编译时错误
 *       spec: 非 char 且非数值类型操作数 → compile-time error
 *       bigint 不在 numeric types (byte/short/int/long/float/double) 中
 */
function main(): void {
    let c: char = c'A';
    let bi: bigint = 1n;
    let r: boolean = c < bi;  // Compile-time error: char vs bigint
}
