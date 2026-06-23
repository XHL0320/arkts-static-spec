/**
 * @id SEM_15_02_05_100_FAIL_UNION_SUBTYPE_GAP
 * @expect compile-fail
 * @section 15.2.5
 * @design 验证联合类型子类型严格检查：U <: T 要求 U 的每个成员 <: T
 * @note 反向用例：string|number|boolean 含 boolean 不在 string|number 中，应报错
 *       编译器正确拒绝 ESE0318，与 Spec 一致 ✅
 */
function main(): void {
    let a: string|number|boolean;
    let b: string|number;
    b = a;
}
