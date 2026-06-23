/*
 * @id SEM_15_08_00_004_PASS_TYPEOF_narrowing
 * @expect compile-pass
 * @section 15.8
 * @design 规范 15.8：typeof 表达式用于类型收窄（智能类型转换）
 * @note 测试 typeof 检查后的智能类型转换
 */

// 测试 typeof 收窄
function test_typeof_narrowing(value: Object): void {
  // typeof 检查前的类型
  let v: Object = value
  
  // typeof 检查后的智能类型转换
  if (typeof v === "string") {
    // 在这个分支中，v 的智能类型是 string
    let len: number = v.length  // OK: string 有 length 属性
    console.log("String length: " + len)
  } else if (typeof v === "number") {
    // 在这个分支中，v 的智能类型是 number
    let doubled: number = v * 2  // OK: number 可以进行乘法运算
    console.log("Number doubled: " + doubled)
  } else if (typeof v === "boolean") {
    // 在这个分支中，v 的智能类型是 boolean
    let notV: boolean = !v  // OK: boolean 可以进行逻辑非运算
    console.log("Boolean negated: " + notV)
  }
}
