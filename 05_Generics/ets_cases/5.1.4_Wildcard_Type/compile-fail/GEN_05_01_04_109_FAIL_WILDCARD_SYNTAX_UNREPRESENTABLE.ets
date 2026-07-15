/**
 * @id GEN_05_01_04_109_FAIL_WILDCARD_SYNTAX_UNREPRESENTABLE
 * @expect compile-fail
 * @section 5.1.4
 * @design wildcard type不能被ArkTS语法直接表示（不能写X<*>）
 * @note spec: wildcard type cannot be represented with the ArkTS syntax
 */
class X109<T> {}
let x109: X109<*> = new X109<number>()
