/**
 * @id EXP_07_27_02_005_PASS_BIGINT_DOUBLE
 * @expect compile-pass
 * @section 7.27.2
 * @design bigint 与 double 类型关系运算编译通过，bigint 隐式转换为 double 后比较
 * @note 正向用例：验证 bigint < double 等混合类型编译通过
 *       Spec 示例：let b = 2n; b < 3.0  // true, 'b' is converted to double
 */
function main(): void {
    let b: bigint = 2n;
    let d: double = 3.0;

    // bigint vs double
    let r1: boolean = b < d;
    let r2: boolean = b <= d;
    let r3: boolean = b > d;
    let r4: boolean = b >= d;

    // double vs bigint
    let r5: boolean = d > b;
    let r6: boolean = d >= b;
    let r7: boolean = d < b;
    let r8: boolean = d <= b;

    // 字面量
    let r9: boolean = 2n < 3.0;
    let r10: boolean = 2n >= 3.0;

    console.log("r1: " + r1);
}
