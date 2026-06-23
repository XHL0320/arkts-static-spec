/*
 * @id SEM_15_02_00_122_FAIL_array_subtype_mismatch
 * @expect compile-fail
 * @section 15.2
 * @design Array<Derived> 不是 Array<Base> 的子类型（泛型类型参数不变）
 * @note 来自规范 15.2 例：ab = ad 产生编译时错误
 */

function sem_15_02_array_subtype_mismatch(): void {
  class Base {}
  class Derived extends Base {}
  let ab: Array<Base> = [new Base()]
  let ad: Array<Derived> = [new Derived()]
  ab = ad
}
