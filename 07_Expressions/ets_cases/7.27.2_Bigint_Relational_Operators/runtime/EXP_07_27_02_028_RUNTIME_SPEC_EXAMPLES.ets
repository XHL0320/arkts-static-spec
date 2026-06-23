/**
 * @id EXP_07_27_02_028_RUNTIME_SPEC_EXAMPLES
 * @expect runtime
 * @section 7.27.2
 * @design Spec 文档中的全部 bigint 关系运算符示例的运行时验证
 * @note 运行时用例：精确复现 Spec 7.27.2 中的示例代码
 *       Spec 示例：
 *         let b = 2n
 *         b < 3n => true
 *         b >= 3n => false
 *         b < 3 => true (int→bigint)
 *         b < 3.0 => true (bigint→double)
 *         const f = 3.f; b < f => true (both→double)
 */
function main(): void {
    let b = 2n

    // bigint against bigint
    if ((b < 3n) != true) { throw new Error("1: b < 3n should be true"); }
    if ((b >= 3n) != false) { throw new Error("2: b >= 3n should be false"); }

    // bigint against an integer type
    // '2' is converted implicitly to bigint
    if ((b < 3) != true) { throw new Error("3: b < 3 should be true"); }
    // BigInt(3) explicit conversion (if available)

    // bigint against double
    // 'b' is converted to double
    if ((b < 3.0) != true) { throw new Error("4: b < 3.0 should be true"); }
    // b.doubleValue() explicit conversion (if available)

    // bigint against float
    // 'b' and 'f' are converted to double
    const f = 3.0f
    if ((b < f) != true) { throw new Error("5: b < f (f=3.0f) should be true"); }

    // 额外验证：交换操作数
    if ((3n > b) != true) { throw new Error("6: 3n > b should be true"); }
    if ((3n <= b) != false) { throw new Error("7: 3n <= b should be false"); }
    if ((3 >= b) != true) { throw new Error("8: 3 >= b should be true"); }
    if ((3.0 <= b) != false) { throw new Error("9: 3.0 <= b should be false"); }
    if ((3.0f <= b) != false) { throw new Error("10: 3.0f <= b should be false"); }

    console.log("verified");
}
