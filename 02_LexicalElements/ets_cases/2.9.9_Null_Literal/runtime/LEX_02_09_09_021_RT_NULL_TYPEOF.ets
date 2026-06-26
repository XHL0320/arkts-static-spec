/**
 * @id LEX_02_09_09_021_RT_NULL_TYPEOF
 * @expect runtime
 * @section 2.9.9
 * @design typeof null 运行时返回值验证
 * @note runtime 用例：验证 typeof null 的运行时行为
 */
function main(): void {
  let x: null = null
  let t: string = typeof x
  if (t !== "object") { throw new Error("typeof null expected 'object', got " + t) }
}
