/**
 * @id EXP_07_17_01_006_PASS_OBJECT_LITERAL_INTERFACE
 * @expect compile-pass
 * @section 7.17.1
 * @design 验证对象字面量 as 接口类型编译通过
 * @note 正向用例：对象字面量 as 接口类型，类型推断
 */
interface I {
  x: int
  y: string
}
let i = { x: 10, y: "hello" } as I
