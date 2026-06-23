/**
 * @id SEM_15_08_02_100_FAIL_INTERSECTION_UNSUPPORTED
 * @expect compile-fail
 * @section 15.8.2
 * @design 验证交叉类型 — Spec §15.8.2 定义但编译器暂不支持
 * @note ⚠️ SPEC 不一致：交叉类型 A&B 未实现（ESY145527）
 *       分类：编译器实现待完善
 */
interface Named { name: string; }
interface Aged { age: int; }
type Person = Named & Aged;
function main(): void {}
