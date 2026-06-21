/**
 * @id ITF_10_03_012_FAIL_OBJECT_METHOD_CLASH_RETURN
 * @expect compile-fail
 * @section 10.3
 * @design toString() 返回值冲突（spec 示例变体）
 * @note 反向用例：验证 toString():string 也应被 Object 方法冲突规则拒绝
 *       规范 §10.3 line 167 — 编译器未实现（GAP）
 */
interface BadToStringReturn {
    toString(): string;
}
