/**
 * @id SEM_15_08_006
 * @expect compile-fail
 * @section 15.8.3
 * @design 验证差分类型 — Spec §15.8.3 定义但编译器暂不支持
 * @note ⚠️ SPEC 不一致：差分类型不支持（ESY145527）
 *       分类：编译器实现待完善
 */
type Even = int & ~1;
function main(): void {}
