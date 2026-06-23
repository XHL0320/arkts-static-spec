/**
 * @id EXP_07_21_08_025_FAIL_ENUM
 * @expect compile-fail
 * @section 7.21.8
 * @design 验证 !enum 应报编译时错误（enum 不是 boolean）
 * @note 反向用例：spec 要求非 boolean/非 Extended Conditional 类型报编译时错误
 *       ⚠️ SPEC 不一致：spec 要求编译时错误，实现允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
enum Color {
    RED,
    GREEN,
    BLUE
}

function testEnumComplement(): void {
    let c: Color = Color.RED
    let r: boolean = !c
}

function main(): void {
    testEnumComplement()
    console.log("verified")
}
