/**
 * @id CLS_09_03_1_006_PASS_GETTER_IMPL_INTERFACE_GETTER
 * @expect compile-pass
 * @section 9.3.1
 * @design getter实现接口getter-only属性编译通过
 * @note 正向用例：spec规定getter-only属性可由类getter实现
 */
interface IGetterOnly {
  get val(): number
}
class CGGetterOnly implements IGetterOnly {
  get val(): number { return 100 }
}
