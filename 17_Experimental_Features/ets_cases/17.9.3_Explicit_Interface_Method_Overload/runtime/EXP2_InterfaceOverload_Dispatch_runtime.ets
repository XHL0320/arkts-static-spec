/**
 * @id EXP2_InterfaceOverload_Dispatch_runtime
 * @expect runtime
 * @section 17.9.3
 * @design 通过接口类型调用 overload
 * @note 运行时用例：接口引用调用 overload 验证正确分发
 */
let ifaceLog: string = ""

interface IRunner {
  runInt(a: int): string
  runStr(a: string): string
  overload run { runInt, runStr }
}

class RunnerImpl implements IRunner {
  runInt(a: int): string { ifaceLog += "int"; return "int:" + a }
  runStr(a: string): string { ifaceLog += "str"; return "str:" + a }
  overload run { runInt, runStr }
}

function main(): void {
  let r: IRunner = new RunnerImpl()
  ifaceLog = ""
  let r1: string = r.run(10)
  if (ifaceLog != "int") {
    throw new Error("Expected int, got: " + ifaceLog)
  }
  if (r1 != "int:10") {
    throw new Error("Expected int:10, got: " + r1)
  }

  ifaceLog = ""
  let r2: string = r.run("hello")
  if (ifaceLog != "str") {
    throw new Error("Expected str, got: " + ifaceLog)
  }
  if (r2 != "str:hello") {
    throw new Error("Expected str:hello, got: " + r2)
  }

  console.log("Interface overload dispatch verified")
}
