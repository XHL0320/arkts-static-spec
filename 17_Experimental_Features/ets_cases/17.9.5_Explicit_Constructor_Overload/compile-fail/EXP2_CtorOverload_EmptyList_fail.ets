/**
 * @id EXP2_CtorOverload_EmptyList_fail
 * @expect compile-fail
 * @section 17.9.5
 * @design overload constructor 列表不能为空
 * @note 反向用例：空的 constructor overload
 * @note ⚠️ SPEC 不一致：编译器实际允许空列表，此处标记为 FAIL
 */
class EmptyCtor {
  private x: int = 0
  overload constructor { }
}
