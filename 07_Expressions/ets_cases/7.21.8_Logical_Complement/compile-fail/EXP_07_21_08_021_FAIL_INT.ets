/**
 * @id EXP_07_21_08_021_FAIL_INT
 * @expect compile-fail
 * @section 7.21.8
 * @design 验证 !int 应报编译时错误（int 不是 boolean/Extended Conditional 类型）
 * @note 反向用例：spec 要求非 boolean/非 Extended Conditional 类型报编译时错误
 *       ⚠️ SPEC 不一致：spec 要求编译时错误，实现允许通过（可能 int 在 Extended Conditional 中）
 *       分类：D 类（Spec 与实现不一致）
 */
function testIntComplement(): void {
    let x: int = 42
    let r: boolean = !x
}

function main(): void {
    testIntComplement()
    console.log("verified")
}
