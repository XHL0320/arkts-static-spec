/**
 * @id EXP_07_17_01_005_PASS_OBJECT_LITERAL_CLASS
 * @expect compile-pass
 * @section 7.17.1
 * @design 验证对象字面量 as 类类型编译通过
 * @note 正向用例：对象字面量 as 类类型，类型推断
 */
class A {
  x: int = 0
  y: string = ""
}
let a = { x: 10, y: "hello" } as A
