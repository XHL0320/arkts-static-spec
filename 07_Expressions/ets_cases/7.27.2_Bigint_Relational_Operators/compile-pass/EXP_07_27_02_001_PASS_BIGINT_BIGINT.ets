/**
 * @id EXP_07_27_02_001_PASS_BIGINT_BIGINT
 * @expect compile-pass
 * @section 7.27.2
 * @design bigint vs bigint 全部四个关系运算符编译通过
 * @note 正向用例：验证 bigint <, <=, >, >= 编译通过
 */
function main(): void {
    let a: bigint = 2n;
    let b: bigint = 3n;

    // 全部四个关系运算符
    let r1: boolean = a < b;
    let r2: boolean = a <= b;
    let r3: boolean = a > b;
    let r4: boolean = a >= b;

    // 字面量比较
    let r5: boolean = 2n < 3n;
    let r6: boolean = 2n <= 2n;
    let r7: boolean = 5n > 3n;
    let r8: boolean = 3n >= 5n;

    console.log("r1: " + r1);
}
