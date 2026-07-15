/**
 * @id GEN_05_01_01_106_FAIL_NO_CONSTRAINT_T_NOT_OBJECT
 * @expect compile-fail
 * @section 5.1.1
 * @design 无约束T默认extends Any，不兼容Object
 * @note spec: no constraint => extends Any, not compatible with Object
 */
class G106<T> { g: T
  foo(): void { let x: Object = this.g }
}