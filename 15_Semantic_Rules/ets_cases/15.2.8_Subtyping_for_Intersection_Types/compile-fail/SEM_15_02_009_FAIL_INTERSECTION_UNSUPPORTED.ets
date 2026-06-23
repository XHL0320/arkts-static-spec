/**
 * @id SEM_15_02_009_FAIL_INTERSECTION_UNSUPPORTED
 * @expect compile-fail
 * @section 15.2.8
 * @design 验证交叉类型 — Spec 要求 A & B <: A 但编译器暂不支持交叉类型
 * @note 反向用例：编译器报 ESY145527，交叉类型暂不支持
 *       ⚠️ SPEC 不一致：Spec 定义交叉类型，编译器未实现
 */
interface Named { name: string; }
interface Aged { age: int; }
type Person = Named & Aged;
function main(): void {
    let p: Person = { name: "Alice", age: 30 };
}
