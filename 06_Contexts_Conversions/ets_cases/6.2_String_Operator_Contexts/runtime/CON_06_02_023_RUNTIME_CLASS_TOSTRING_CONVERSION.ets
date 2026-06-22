/**
 * @id CON_06_02_023_RUNTIME_CLASS_TOSTRING_CONVERSION
 * @expect runtime
 * @section 6.2
 * @design 引用类型 string 转换运行时行为：class 实例通过 toString() 方法转换
 * @note 运行时用例：实际执行验证对象实例 → toString() 结果
 */
class Container {
  value: int
  constructor(v: int) {
    this.value = v
  }
}

function main(): void {
  let c: Container = new Container(42)
  let r1: string = "container: " + c
  let prefix: string = "container: "
  if (r1.substring(0, prefix.length) != prefix) {
    throw new Error("assertion failed: expected prefix 'container: ', got '" + r1 + "'")
  }

  console.log("Class toString conversion verified")
}
