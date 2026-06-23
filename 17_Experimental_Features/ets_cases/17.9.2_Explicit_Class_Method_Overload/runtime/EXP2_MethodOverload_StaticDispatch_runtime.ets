/**
 * @id EXP2_17_09_02_017_RUNTIME_STATIC_DISPATCH
 * @expect runtime
 * @section 17.9.2
 * @design static overload 运行时调度
 * @note 运行时用例：通过类名调用 static overload
 */
let staticCallLog: string = ""

class StaticCalc {
  static doWork(a: int): string { staticCallLog += "int"; return "int:" + a }
  static doWorkStr(a: string): string { staticCallLog += "str"; return "str:" + a }
  static overload doWork { doWork, doWorkStr }
}

function main(): void {
  staticCallLog = ""
  let r1: string = StaticCalc.doWork(100)
  if (staticCallLog != "int") {
    throw new Error("Expected int dispatch, got: " + staticCallLog)
  }
  if (r1 != "int:100") {
    throw new Error("Expected int:100, got: " + r1)
  }

  staticCallLog = ""
  let r2: string = StaticCalc.doWork("test")
  if (staticCallLog != "str") {
    throw new Error("Expected str dispatch, got: " + staticCallLog)
  }
  if (r2 != "str:test") {
    throw new Error("Expected str:test, got: " + r2)
  }

  console.log("Static method overload dispatch verified")
}
