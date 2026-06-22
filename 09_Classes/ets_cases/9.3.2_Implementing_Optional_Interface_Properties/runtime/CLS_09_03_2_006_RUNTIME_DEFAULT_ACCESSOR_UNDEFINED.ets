/**
 * @id CLS_09_03_2_006_RUNTIME_DEFAULT_ACCESSOR_UNDEFINED
 * @expect runtime
 * @section 9.3.2
 * @design 默认accessor返回undefined验证
 * @note 运行时用例：验证不实现可选属性时默认返回undefined
 */
interface IOpt6 {
  n?: number
}
class COpt6 implements IOpt6 {
}

function main(): void {
  let c = new COpt6()
  let v = c.n
  if (v != undefined) {
    throw new Error("c.n should be undefined")
  }
  console.log("Default accessor undefined verified")
}
