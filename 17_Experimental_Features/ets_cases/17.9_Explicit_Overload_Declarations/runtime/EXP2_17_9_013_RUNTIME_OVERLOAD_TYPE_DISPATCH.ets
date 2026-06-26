/**
 * @id EXP2_17_9_013_RUNTIME_OVERLOAD_TYPE_DISPATCH
 * @expect runtime
 * @section 17.9
 * @design 运行时验证 overload 根据参数类型正确分发
 * @note 运行时用例：传递不同类型参数验证运行时调用正确的 overload 实现
 */
function clInt(v: int): string { return "int:" + v.toString() }
function clStr(v: string): string { return "str:" + v }
overload classify { clInt, clStr }

function main(): void {
  let r1: string = classify(100)
  let r2: string = classify("hello")
  console.log(r1 + "|" + r2)
}
