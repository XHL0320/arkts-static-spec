/**
 * @id EXP_07_27_02_021_RUNTIME_BIGINT_BIGINT
 * @expect runtime
 * @section 7.27.2
 * @design bigint vs bigint 四种关系运算符运行时行为验证
 * @note 运行时用例：验证 bigint 与 bigint 比较的 4 个运算符全部正确
 *       Spec 示例：b < 3n = true, b >= 3n = false
 */
function main(): void {
    let a: bigint = 2n;
    let b: bigint = 3n;

    // <
    if ((a < b) != true) { throw new Error("1: 2n < 3n should be true"); }
    if ((b < a) != false) { throw new Error("2: 3n < 2n should be false"); }
    if ((a < a) != false) { throw new Error("3: 2n < 2n should be false"); }

    // <=
    if ((a <= b) != true) { throw new Error("4: 2n <= 3n should be true"); }
    if ((a <= a) != true) { throw new Error("5: 2n <= 2n should be true"); }
    if ((b <= a) != false) { throw new Error("6: 3n <= 2n should be false"); }

    // >
    if ((b > a) != true) { throw new Error("7: 3n > 2n should be true"); }
    if ((a > b) != false) { throw new Error("8: 2n > 3n should be false"); }
    if ((a > a) != false) { throw new Error("9: 2n > 2n should be false"); }

    // >=
    if ((b >= a) != true) { throw new Error("10: 3n >= 2n should be true"); }
    if ((a >= a) != true) { throw new Error("11: 2n >= 2n should be true"); }
    if ((a >= b) != false) { throw new Error("12: 2n >= 3n should be false"); }

    // 负值 bigint
    let neg: bigint = -5n;
    if ((neg < a) != true) { throw new Error("13: -5n < 2n should be true"); }
    if ((a < neg) != false) { throw new Error("14: 2n < -5n should be false"); }
    if ((neg > a) != false) { throw new Error("15: -5n > 2n should be false"); }
    if ((neg > -10n) != true) { throw new Error("16: -5n > -10n should be true"); }

    // 相等值
    let c: bigint = 2n;
    if ((a < c) != false) { throw new Error("17: 2n < 2n should be false"); }
    if ((a <= c) != true) { throw new Error("18: 2n <= 2n should be true"); }
    if ((a >= c) != true) { throw new Error("19: 2n >= 2n should be true"); }
    if ((a > c) != false) { throw new Error("20: 2n > 2n should be false"); }

    console.log("verified");
}
