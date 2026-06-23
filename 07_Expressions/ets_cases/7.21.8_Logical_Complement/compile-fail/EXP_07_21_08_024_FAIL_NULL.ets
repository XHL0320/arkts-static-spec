/**
 * @id EXP_07_21_08_024_FAIL_NULL
 * @expect compile-fail
 * @section 7.21.8
 * @design 验证 !null 应报编译时错误
 * @note 反向用例：spec 要求非 boolean/非 Extended Conditional 类型报编译时错误
 *       ⚠️ SPEC 不一致：spec 要求编译时错误，实现允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
function testNullComplement(): void {
    let r: boolean = !null
}

function main(): void {
    testNullComplement()
    console.log("verified")
}
