/*
 * @id SEM_15_02_00_121_FAIL_tuple_subtype_mismatch
 * @expect compile-fail
 * @section 15.2
 * @design [Derived,Derived] 不是 [Base,Base] 的子类型（元组类型参数不变）
 * @note 来自规范 15.2 例：tb = td 产生编译时错误
 */

function sem_15_02_tuple_subtype_mismatch(): void {
  class Base {}
  class Derived extends Base {}
  let tb: [Base, Base] = [new Base(), new Base()]
  let td: [Derived, Derived] = [new Derived(), new Derived()]
  tb = td
}
