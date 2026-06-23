/**
 * @id EXP_07_21_05_035_RUNTIME_FLOAT_DOUBLE
 * @expect runtime
 * @section 7.21.5
 * @design 验证 +float 和 +double 运行时返回值正确。
 *         float 和 double 保持原类型。
 * @note 运行时用例：+float 和 +double 值正确
 */
function main(): void {
    let a: float = 1.5 as float;
    let r1: float = +a;
    if (r1 != 1.5) {
        throw new Error("assertion failed: expected +1.5f=1.5, got " + r1);
    }
    let b: double = 3.14;
    let r2: double = +b;
    if (r2 != 3.14) {
        throw new Error("assertion failed: expected +3.14=3.14, got " + r2);
    }
    console.log("verified");
}
