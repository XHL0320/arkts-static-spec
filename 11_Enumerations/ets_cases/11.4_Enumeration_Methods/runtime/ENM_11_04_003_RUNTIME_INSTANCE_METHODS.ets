/**
 * @id ENM_11_04_003_RUNTIME_INSTANCE_METHODS
 * @expect runtime
 * @section 11.4
 * @design 实例方法: toString/valueOf/getName
 * @note 运行时用例
 */
enum C3 { Red, Green = 10, Blue }

function main(): void {
  let c: C3 = C3.Green

  let name: string = c.getName()
  if (name != "Green") throw new Error("getName should be Green, got " + name)

  let val: int = c.valueOf()
  if (val != 10) throw new Error("valueOf should be 10, got " + val)

  if (c.toString() != val.toString()) throw new Error("toString should equal valueOf.toString")

  console.log("enum instance methods verified")
}