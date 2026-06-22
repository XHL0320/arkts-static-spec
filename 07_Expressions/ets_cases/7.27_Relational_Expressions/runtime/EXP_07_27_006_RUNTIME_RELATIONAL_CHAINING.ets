/**
 * @id EXP_07_27_006_RUNTIME_RELATIONAL_CHAINING
 * @expect runtime
 * @section 7.27
 * @design 关系运算链式比较

 * @note 运行时用例：实际执行验证关系运算链式行为
 */
function main(): void {
  let a: int = 1
  let b: int = 2
  let c: int = 3
  let r1: boolean = a < b
  let r2: boolean = b < c
  let result: boolean = r1 == r2
  if (result != true) {
    throw new Error("assertion failed: (1<2)==(2<3) should be true")
  }
  console.log("verified")
}
