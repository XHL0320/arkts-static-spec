/*
 * @id SEM_15_14_00_026_PASS_COMPREHENSIVE_narrowing
 * @expect compile-pass
 * @section 15.14.1
 * @design 合并综合测试：联合类型缩窄（含 null / 不含 null 变体）
 */

function test_narrow_without_null(): void {
  let x: number | string = 42
  let result: string = typeof x === "string" ? x : x.toString()
  console.log("narrow without null (conditional): " + result)

  let y: number | string = "hello"
  let result2: boolean = (typeof y === "string") && (y.length > 0)
  console.log("narrow without null (logical): " + result2)

  let z: number | string = 42
  while (typeof z === "number") {
    console.log("narrow without null (while): " + (z * 2))
    break
  }
}

function test_narrow_with_null(): void {
  let x: number | string | null = 42
  let result: string = typeof x === "string" ? x : x.toString()
  console.log("narrow with null (conditional): " + result)

  let y: number | string | null = "hello"
  let result2: boolean = (typeof y === "string") && (y.length > 0)
  console.log("narrow with null (logical): " + result2)

  let z: number | string | null = 42
  while (typeof z === "number") {
    console.log("narrow with null (while): " + (z * 2))
    break
  }
}

test_narrow_without_null()
test_narrow_with_null()
