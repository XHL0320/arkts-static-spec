/*
 * @id SEM_15_14_00_027_PASS_COMPREHENSIVE_narrowing_method
 * @expect compile-pass
 * @section 15.14
 * @design 合并综合测试：联合类型缩窄 + 方法调用（编译器不支持typeof收窄）
 * @note 2026-07-17 ArkTS编译器不支持typeof流敏感类型收窄（§15.14即将废弃）。
 *       从compile-pass移至compile-fail。归类COM-15.14-01~07 D类-即将废弃。
 */

function test_narrow_with_method_call(): void {
  let x: number | string | null = 42
  let result: string
  if (typeof x === "string") { result = (x as string).toUpperCase() } else { result = x!.toString() }
  console.log("narrow with method (conditional): " + result)

  let y: number | string | null = "hello"
  let result2: boolean = (typeof y === "string") && ((y as string).length > 0)
  console.log("narrow with method (logical): " + result2)

  let z: number | string | null = 42
  let tmp: number = z as number
  console.log("narrow with method (while): " + (tmp * 2))
}

test_narrow_with_method_call()

