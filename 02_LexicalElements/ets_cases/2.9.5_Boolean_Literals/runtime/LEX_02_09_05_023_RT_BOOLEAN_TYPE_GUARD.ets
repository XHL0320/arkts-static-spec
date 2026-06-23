/**
 * @id LEX_02_09_05_023_RT_BOOLEAN_TYPE_GUARD
 * @expect runtime
 * @section 2.9.5
 * @design 布尔类型守卫运行时验证
 * @note runtime 用例：验证布尔类型守卫的运行时行为
 */

function main(): void {
  // 布尔类型守卫
  let x: boolean = true
  
  if (typeof x === "boolean") {
    // 类型守卫通过
  } else {
    throw new Error("typeof boolean failed")
  }

  // 布尔值验证
  if (x !== true) { throw new Error("boolean value failed") }

  // 布尔类型检查
  let y: boolean = false
  if (y !== false) { throw new Error("false value failed") }
}

