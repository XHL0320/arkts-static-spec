/**
 * @id GEN_05_01_01_107_FAIL_NO_CONSTRAINT_T_NO_METHOD
 * @expect compile-fail
 * @section 5.1.1
 * @design 无约束T默认extends Any，无方法可用
 * @note spec: no constraint => extends Any, T has no methods
 */
class G107<T> { g: T
  foo(): void { this.g.toString() }
}