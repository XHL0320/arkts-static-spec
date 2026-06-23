/**
 * @id EXP_07_21_08_023_FAIL_OBJECT
 * @expect compile-fail
 * @section 7.21.8
 * @design 验证 !Object 应报编译时错误
 * @note 反向用例：spec 要求非 boolean/非 Extended Conditional 类型报编译时错误
 *       ⚠️ SPEC 不一致：spec 要求编译时错误，实现允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
function testObjectComplement(): void {
    let o: Object = new Object()
    let r: boolean = !o
}

function main(): void {
    testObjectComplement()
    console.log("verified")
}
