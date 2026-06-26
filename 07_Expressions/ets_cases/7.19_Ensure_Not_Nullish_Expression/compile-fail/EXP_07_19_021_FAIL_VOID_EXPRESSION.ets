/**
 * @id EXP_07_19_021_FAIL_VOID_EXPRESSION
 * @expect compile-fail
 * @section 7.19
 * @design 验证 ! 运算符应用于 void 类型表达式产生编译时错误
 * @note 反向用例：void 函数调用不产生值，应用 ! 预期编译时错误
 *       ⚠️ SPEC 不一致：spec 未明确规定 void! 行为，实际编译器允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
function noop(): void {
}

function testVoidExpression(): void {
    let x = noop()!
}
