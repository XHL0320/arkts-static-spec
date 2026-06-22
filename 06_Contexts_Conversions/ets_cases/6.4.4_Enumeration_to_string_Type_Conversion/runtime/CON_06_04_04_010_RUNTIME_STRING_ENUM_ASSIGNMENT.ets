/**
 * @id CON_06_04_04_010_RUNTIME_STRING_ENUM_ASSIGNMENT
 * @expect runtime
 * @section 6.4.4
 * @design string 枚举多次赋值运行时行为
 * @note 运行时用例：验证枚举变量的赋值和值变化
 */
enum Status { Ready = "ready", Running = "running", Done = "done" }

function main(): void {
  let s: string = ""
  let e: Status = Status.Ready
  s = e
  if (s != "ready") { throw new Error("assertion: ready") }

  e = Status.Running
  s = e
  if (s != "running") { throw new Error("assertion: running") }

  let u: string | int = Status.Done
  if (u != "done") { throw new Error("assertion: done in union") }

  let v: string | int = 0
  v = Status.Ready
  if (v != "ready") { throw new Error("assertion: ready in reassigned union") }

  console.log("String enum assignment verified")
}
