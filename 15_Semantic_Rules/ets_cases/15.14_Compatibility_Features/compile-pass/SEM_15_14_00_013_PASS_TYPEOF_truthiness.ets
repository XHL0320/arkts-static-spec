/*
 * @id SEM_15_14_00_013_PASS_TYPEOF_truthiness
 * @expect compile-pass
 * @section 15.14.1
 * @design 规范 15.14.1：typeof 表达式的真值检查
 * @note 测试 typeof 表达式的真值检查
 */

// 测试 typeof 表达式的真值检查
function test_typeof_truthiness(): void {
  let x: any = "hello"
  
  // typeof 返回字符串字面量类型的真值检查
  if (typeof x === "string") {
    console.log("x is string")
  }
  
  if (typeof x === "number") {
    console.log("x is number")
  }
  
  if (typeof x === "boolean") {
    console.log("x is boolean")
  }
  
  if (typeof x === "undefined") {
    console.log("x is undefined")
  }
  
  if (typeof x === "object") {
    console.log("x is object")
  }
  
  console.log("Typeof truthiness test passed")
}