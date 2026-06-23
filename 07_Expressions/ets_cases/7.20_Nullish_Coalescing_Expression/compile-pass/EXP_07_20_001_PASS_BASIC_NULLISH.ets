/**
 * @id EXP_07_20_001_PASS_BASIC_NULLISH
 * @expect compile-pass
 * @section 7.20
 * @design 验证 undefined ?? "default" 基本空值合并语法编译通过。
 *         LHS 为 undefined，表达式取 RHS。
 * @note 正向用例：验证 ?? 基本语法编译通过
 */
function test_basic_nullish(): void {
    let x: string = undefined ?? "default";
}
