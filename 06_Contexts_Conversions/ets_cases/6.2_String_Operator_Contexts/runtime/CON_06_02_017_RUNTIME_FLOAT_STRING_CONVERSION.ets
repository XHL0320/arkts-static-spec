/**
 * @id CON_06_02_017_RUNTIME_FLOAT_STRING_CONVERSION
 * @expect runtime
 * @section 6.2
 * @design 浮点类型 string 转换运行时行为：double 转换为十进制字符串
 * @note 运行时用例：实际执行验证浮点数 → string 十进制转换
 */
function main(): void {
  let r1: string = "pi=" + 3.14
  if (r1 != "pi=3.14") {
    throw new Error("assertion failed: expected 'pi=3.14', got '" + r1 + "'")
  }

  let r2: string = 1.0 + " is one"
  if (r2 != "1 is one") {
    throw new Error("assertion failed: expected '1 is one', got '" + r2 + "'")
  }

  let d: double = 1.5
  let r3: string = "d=" + d
  if (r3 != "d=1.5") {
    throw new Error("assertion failed: expected 'd=1.5', got '" + r3 + "'")
  }

  console.log("Float string conversion verified")
}
