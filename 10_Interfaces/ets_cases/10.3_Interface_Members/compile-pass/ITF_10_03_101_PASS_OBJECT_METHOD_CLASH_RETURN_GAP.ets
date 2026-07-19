/**
 * @id ITF_10_03_101_PASS_OBJECT_METHOD_CLASH_RETURN_GAP
 * @expect compile-pass
 * @section 10.3
 * @design toString() 返回值冲突（PDF原文§10.3不要求compile-time error）
 * @note 2026-07-17 PDF原文核查：§10.3规则含两个限定条件（override-compatible + default method），
 *       后果是"will never be invoked"（运行时注记），不是compile-time error。
 *       markdown版本删除限定条件导致误读。从compile-fail移至compile-pass。
 */
interface BadToStringReturn {
    toString(): string;
}
