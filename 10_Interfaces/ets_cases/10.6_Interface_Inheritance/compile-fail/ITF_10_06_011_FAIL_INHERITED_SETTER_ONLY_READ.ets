/**
 * @id ITF_10_06_011_FAIL_INHERITED_SETTER_ONLY_READ
 * @expect compile-fail
 * @section 10.6
 * @design 继承的 setter-only 属性读取（spec 示例场景）
 * @note 反向用例：验证通过继承获取的 setter-only 属性读取编译错误
 *
 * SPEC EXPECTS: §10.6 line 413 — spec 示例 "i3.prop2 // Compile-time error
 *   as no getter for prop2"（继承链中的 setter-only 不可读取）
 *
 * COMPILER BEHAVIOR: 待验证
 *
 * GAP ANALYSIS:
 *   相位：Checker 属性访问权限检查
 *   链路：Binder (属性继承) → Checker (setter-only read 检测)
 *   根因：待测试
 *
 * @cross-language AMBIGUITY
 * CROSS-LANGUAGE COMPARISON (ArkTS / Java / Swift):
 * ┌───────────┬──────────────────────────────────────────────────────┐
 * │ ArkTS     │ ✗ 编译错误 — 不支持读取 setter-only 属性（无论层级）     │
 * ├───────────┼──────────────────────────────────────────────────────┤
 * │ Java      │ N/A — 接口无 setter-only 语法                         │
 * ├───────────┼──────────────────────────────────────────────────────┤
 * │ Swift     │ ✗ 编译错误 — { set } 属性不可读                       │
 * └───────────┴──────────────────────────────────────────────────────┘
 */
interface I1 {
    set prop2(p: number);
}
interface I2 extends I1 {}
function test(i2: I2): void {
    let x: number = i2.prop2;
}
