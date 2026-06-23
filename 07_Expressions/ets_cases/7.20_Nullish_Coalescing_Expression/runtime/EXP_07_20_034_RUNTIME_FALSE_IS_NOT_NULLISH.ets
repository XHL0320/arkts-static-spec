/**
 * @id EXP_07_20_034_RUNTIME_FALSE_IS_NOT_NULLISH
 * @expect runtime
 * @section 7.20
 * @design 验证 false 变量 ?? true 运行时结果为 false。
 *         false 不是 nullish 值，不会触发取 RHS。
 *         这是与 || 的关键区别：|| 将 false 视为 falsy，?? 不将 false 视为 nullish。
 * @note 运行时用例：false 变量 ?? true = false（false 非 nullish）
 */
function main(): void {
    let f: boolean = false;
    let result: boolean = f ?? true;
    if (result != false) {
        throw new Error("assertion failed: expected false, got " + result);
    }
    console.log("verified");
}
