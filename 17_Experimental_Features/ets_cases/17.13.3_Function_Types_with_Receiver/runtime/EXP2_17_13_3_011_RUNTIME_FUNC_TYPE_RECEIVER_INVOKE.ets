/**
 * @id EXP2_17_13_3_011_RUNTIME_FUNC_TYPE_RECEIVER_INVOKE
 * @expect runtime
 * @section 17.13.3
 * @design 运行时验证：函数类型变量通过普通调用语法正确执行
 * @note 运行时用例：实际执行验证函数类型带接收者的调用
 */
class Metric { value: number = 0 }
type MetricReader = (this: Metric) => number
function main(): void {
  let reader: MetricReader = (this: Metric): number => { return this.value * 3 + 1 }
  let m: Metric = new Metric(); m.value = 10
  let r: number = reader(m)
  if (r != 31) { throw new Error("assertion failed: expected 31, got " + r) }
  console.log("verified")
}
