/**
 * @id SEM_15_01_04_003_PASS_MIXED_NUMERIC
 * @expect compile-pass
 * @section 15.1.4
 * @design 验证混合数值类型运算拓宽：int + long → long
 * @note 正向用例：不同类型数值运算时拓宽到较大类型
 */
function main(): void {
    let i: int = 10;
    let d: double = 3.5;
    let r = i + d;
    let r2: double = r;
    console.log(`${r2}`);
}
