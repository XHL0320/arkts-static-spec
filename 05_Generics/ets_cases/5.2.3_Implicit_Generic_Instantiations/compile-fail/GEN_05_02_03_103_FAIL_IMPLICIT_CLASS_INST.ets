/**
 * @id GEN_05_02_03_103_FAIL_IMPLICIT_CLASS_INST
 * @expect compile-fail
 * @section 5.2.3
 * @design 隐式实例化只适用于函数/方法，不适用于类
 * @note spec: implicit instantiation only for generic functions and methods
 */
class G103<T> {}
let x103 = new G103()