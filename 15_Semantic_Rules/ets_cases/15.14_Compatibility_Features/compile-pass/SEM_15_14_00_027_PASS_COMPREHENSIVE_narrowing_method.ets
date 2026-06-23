/*
 * @id SEM_15_14_00_027_PASS_COMPREHENSIVE_narrowing_method
 * @expect compile-pass
 * @section 15.14.1
 * @design 合并综合测试：联合类型缩窄 + 方法调用
 */

function test_narrow_with_method_call(): void {
  let x: number | string | null = 42
  let result: string = typeof x === "string" ? x.toUpperCase() : x.toString()
  console.log("narrow with method (conditional): " + result)

  let y: number | string | null = "hello"
  let result2: boolean = (typeof y === "string") && (y.length > 0)
  console.log("narrow with method (logical): " + result2)

  let z: number | string | null = 42
  while (typeof z === "number") {
    console.log("narrow with method (while): " + (z * 2))
    break
  }
}

test_narrow_with_method_call()
