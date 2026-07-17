/**
 * @id ITF_10_03_003_PASS_OBJECT_METHOD_CLASH
 * @expect compile-pass
 * @section 10.3
 * @design 与Object方法冲突（PDF原文§10.3不要求compile-time error）
 * @note 2026-07-17 PDF原文核查：§10.3规则含两个限定条件（override-compatible + default method），
 *       编译器接受是正确行为。移除GAP标注。
 */
interface BadToString {
    toString(p: number): void;
}
