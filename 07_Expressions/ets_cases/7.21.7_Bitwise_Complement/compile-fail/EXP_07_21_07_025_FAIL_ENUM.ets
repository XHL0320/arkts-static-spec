/**
 * @id EXP_07_21_07_025_FAIL_ENUM
 * @expect compile-fail
 * @section 7.21.7
 * @design 验证 ~enum 应报编译时错误（enum 不是数值类型）
 * @note 反向用例：spec 要求 ~ 仅对数值类型和 bigint 有效，但 ArkTS 实际允许 ~enum
 *       ⚠️ SPEC 不一致：spec 要求 enum 不是数值类型应报编译时错误，实现允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
enum Color {
    RED,
    GREEN,
    BLUE
}

function testEnumComplement(): void {
    let c: Color = Color.RED
    let r: int = ~c
}

function main(): void {
    testEnumComplement()
    console.log("verified")
}
