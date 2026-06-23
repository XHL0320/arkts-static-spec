/*
 * @id SEM_15_11_00_030_PASS_overload_resolution
 * @expect compile-pass
 * @section 15.11
 * @design 规范 15.11：重载解析按参数类型选择最佳匹配
 * @note 测试重载解析：根据参数类型选择正确的重载函数
 */

// 测试重载解析
function fmt(x: int): string {
  return "int:" + x.toString()
}

function fmt(x: string): string {
  return "str:" + x
}

function test_overload_resolution(): void {
  let r: string = fmt(42)  // 调用 fmt(x: int)

  console.log(r)
}
