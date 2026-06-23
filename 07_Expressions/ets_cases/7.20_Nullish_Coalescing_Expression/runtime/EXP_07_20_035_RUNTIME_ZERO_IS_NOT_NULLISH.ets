/**
 * @id EXP_07_20_035_RUNTIME_ZERO_IS_NOT_NULLISH
 * @expect runtime
 * @section 7.20
 * @design 验证 0 变量 ?? 99 运行时结果为 0。
 *         数值 0 不是 nullish 值，不会触发取 RHS。
 *         这是与 || 的关键区别：|| 将 0 视为 falsy，?? 不将 0 视为 nullish。
 * @note 运行时用例：0 变量 ?? 99 = 0（0 非 nullish）
 */
function main(): void {
    let z: int = 0;
    let result: int = z ?? 99;
    if (result != 0) {
        throw new Error("assertion failed: expected 0, got " + result);
    }
    console.log("verified");
}
