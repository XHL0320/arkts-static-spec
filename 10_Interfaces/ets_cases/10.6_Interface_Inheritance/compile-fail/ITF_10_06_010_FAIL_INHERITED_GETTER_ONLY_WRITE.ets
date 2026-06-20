/**
 * @id ITF_10_06_010_FAIL_INHERITED_GETTER_ONLY_WRITE
 * @expect compile-fail
 * @section 10.6
 * @design 继承的 getter-only 属性写入（spec 示例场景）
 * @note 反向用例：验证通过继承获取的 getter-only 属性写入编译错误
 *
 * SPEC EXPECTS: §10.6 line 415 — spec 示例 "i3.prop3 = 5 // Compile-time error
 *   as no getter for prop3"（继承链中的 getter-only 不可赋值）
 *
 * COMPILER BEHAVIOR: 待验证 — 编译器应在继承层同样检测属性访问权限
 *
 * GAP ANALYSIS:
 *   相位：Checker 属性访问权限检查
 *   链路：Binder (属性继承) → Checker (getter-only write 检测)
 *   根因：待测试 — 若编译器对继承属性和直接声明属性使用相同检查逻辑则通过，
 *         若只检查直接声明接口则可能漏报
 *
 * @cross-language AMBIGUITY
 * CROSS-LANGUAGE COMPARISON (ArkTS / Java / Swift):
 * ┌───────────┬──────────────────────────────────────────────────────┐
 * │ ArkTS     │ ✗ 编译错误 — 不支持写入 getter-only 属性（无论层级）     │
 * ├───────────┼──────────────────────────────────────────────────────┤
 * │ Java      │ ✗ 编译错误 — 接口无 getter-only 语法（仅常量字段）       │
 * ├───────────┼──────────────────────────────────────────────────────┤
 * │ Swift     │ ✗ 编译错误 — { get } 属性不可写                       │
 * └───────────┴──────────────────────────────────────────────────────┘
 */
interface I1 {
    get prop3(): number;
}
interface I2 extends I1 {}
function test(i2: I2): void {
    i2.prop3 = 5;
}
