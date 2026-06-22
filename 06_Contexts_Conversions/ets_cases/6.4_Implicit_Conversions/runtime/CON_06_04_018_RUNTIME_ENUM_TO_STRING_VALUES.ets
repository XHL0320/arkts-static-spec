/**
 * @id CON_06_04_018_RUNTIME_ENUM_TO_STRING_VALUES
 * @expect runtime
 * @section 6.4
 * @design Enumeration to string 运行时值保留
 * @note 运行时用例：实际执行验证 string 枚举→string 转换
 */
enum Status {
  Ready = "ready",
  Running = "running",
  Done = "done"
}

function main(): void {
  let s1: string = "status: " + Status.Ready
  if (s1 != "status: ready") {
    throw new Error("assertion failed: expected 'status: ready', got '" + s1 + "'")
  }

  let s2: string = Status.Running + " now"
  if (s2 != "running now") {
    throw new Error("assertion failed: expected 'running now', got '" + s2 + "'")
  }

  let s3: string = "" + Status.Done
  if (s3 != "done") {
    throw new Error("assertion failed: expected 'done', got '" + s3 + "'")
  }

  console.log("Enum to string values verified")
}
