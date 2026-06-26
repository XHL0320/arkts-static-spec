/**
 * @id EXP_07_19_022_FAIL_ALWAYS_NULLISH_ASSIGN
 * @expect compile-fail
 * @section 7.19
 * @design 验证编译期已知始终为 nullish 的值应用 ! 后类型不兼容导致编译时错误
 * @note 反向用例：undefined! 类型应为非空变体（never），赋值给非空类型变量预期编译时错误
 *       ⚠️ SPEC 不一致：spec 未明确规定 undefined! 的类型处理，实际编译器允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
function testAlwaysNullish(): void {
    let x: int = undefined!
}
