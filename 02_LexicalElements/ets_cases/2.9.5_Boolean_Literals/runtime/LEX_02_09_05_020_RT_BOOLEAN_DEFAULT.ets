/**
 * @id LEX_02_09_05_020_RT_BOOLEAN_DEFAULT
 * @expect runtime
 * @section 2.9.5
 * @design 布尔默认值运行时验证
 * @note runtime 用例：验证布尔默认值的运行时行为
 */

function main(): void {
  // 布尔默认值
  let x1: boolean = false
  if (x1 !== false) { throw new Error("false failed, got " + x1) }

  let x2: boolean = true
  if (x2 !== true) { throw new Error("true failed, got " + x2) }

  // 布尔变量赋值
  let x3: boolean = x1
  if (x3 !== false) { throw new Error("assignment failed, got " + x3) }

  let x4: boolean = x2
  if (x4 !== true) { throw new Error("assignment failed, got " + x4) }
}
