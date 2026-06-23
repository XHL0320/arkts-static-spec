/**
 * @id EXP_07_17_01_015_RUNTIME_OBJECT_CAST
 * @expect runtime
 * @section 7.17.1
 * @design 验证对象字面量 as 类类型运行时字段值正确
 * @note 运行时用例：对象字面量 as 类类型后字段值验证
 */
class A {
  x: int = 0
  y: string = ""
}

function main(): void {
  let a = { x: 10, y: "hello" } as A
  if (a.x != 10) {
    throw new Error("assertion failed: expected 10, got " + a.x)
  }
  if (a.y != "hello") {
    throw new Error("assertion failed: expected hello, got " + a.y)
  }
  console.log("verified")
}
