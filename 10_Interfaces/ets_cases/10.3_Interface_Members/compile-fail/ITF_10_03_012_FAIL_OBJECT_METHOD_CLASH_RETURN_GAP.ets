/**
 * @id ITF_10_03_012_FAIL_OBJECT_METHOD_CLASH_RETURN
 * @expect compile-fail
 * @section 10.3
 * @design toString() 返回值冲突（spec 示例变体）
 * @note 反向用例：验证 toString():string 也应被 Object 方法冲突规则拒绝
 *
 * SPEC EXPECTS: §10.3 line 167 — "A compile-time error occurs if the method
 *   explicitly declared by the interface has the same name as
 *   the Object's public method" — 规范示例明确标注 toString():string 为编译错误
 *
 * COMPILER BEHAVIOR: 编译器未实现 §10.3 Object 方法冲突检测，预期可能通过
 *
 * GAP ANALYSIS:
 *   类型：类型5 — Parser/Checker 未实现规范约束
 *   链路：Checker (Object 成员继承检测) → Checker (名称冲突检查)
 *   根因：编译器未对接口声明中的方法名与 Object.prototype 公共方法名做冲突检测
 *
 * GAP DOCUMENTED: 编译器未实现 §10.3 Object public 方法名冲突检测
 *   关联 Gap: ITF_10_03_011_PASS_OBJECT_METHOD_CLASH (toString(p):void 同因未被拒绝)
 *
 * @cross-language AMBIGUITY 跨语言歧义用例
 * CROSS-LANGUAGE COMPARISON (ArkTS / Java / Swift):
 * ┌───────────┬──────────────────────────────────────────────────────┐
 * │ ArkTS     │ ✗ 规范要求报错，但编译器未实现（GAP）                   │
 * ├───────────┼──────────────────────────────────────────────────────┤
 * │ Java      │ ✓ 不报错 — 接口声明 toString(int) 合法，仅实现时可能冲突 │
 * ├───────────┼──────────────────────────────────────────────────────┤
 * │ Swift     │ ✓ 不报错 — protocol 可声明同名方法，NSObjectProtocol    │
 * │           │   已含 description，声明时仅产生警告                     │
 * └───────────┴──────────────────────────────────────────────────────┘
 */
interface BadToStringReturn {
    toString(): string;
}
