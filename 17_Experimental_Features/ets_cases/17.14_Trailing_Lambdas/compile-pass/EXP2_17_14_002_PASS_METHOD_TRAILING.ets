/**
 * @id EXP2_17_14_002_PASS_METHOD_TRAILING
 * @expect compile-pass
 * @section 17.14
 * @design 类方法调用使用 trailing lambda 语法：obj.method() { body }
 * @note 正向用例：验证方法调用的 trailing lambda 语法编译通过
 */
class Runner {
  execute(callback: () => void): void {
    callback()
  }
}

let runner: Runner = new Runner()
runner.execute() { console.log("method trailing lambda") }
