/*
 * @id SEM_15_08_00_022_PASS_DIFFERENCE_type_computation
 * @expect compile-pass
 * @section 15.8.3
 * @design 规范 15.8.3：智能类型转换中差集类型的计算
 * @note 测试智能类型转换中的差集类型计算
 */

// 测试智能类型转换中的差集类型计算
function test_diference_type_computation(x: string | undefined): void {
  // 差集类型计算：x 的智能类型在 x != undefined 时为 string
  if (x != undefined) {
    // 在这个分支中，x 的智能类型是 string | undefined - undefined = string
    let len: number = x.length  // OK: 智能类型是 string
    console.log("Length: " + len)
  }
}

// 测试更复杂的情况
function test_complex_diference_type(x: number | string | null | undefined): void {
  // 差集类型计算：x 的智能类型在 x != null && x != undefined 时为 number | string
  if (x != null && x != undefined) {
    // 在这个分支中，x 的智能类型是 (number | string | null | undefined) - (null | undefined)
    if (typeof x === "number") {
      // 在这个分支中，x 的智能类型是 number
      console.log("Number: " + (x * 2))
    } else {
      // 在这个分支中，x 的智能类型是 string
      console.log("String: " + x.toUpperCase())
    }
  }
}

// 测试差集类型在联合类型中的应用
function test_diference_type_with_union(x: (number | string) | null): void {
  if (x != null) {
    // 在这个分支中，x 的智能类型是 (number | string) | null - null = number | string
    if (typeof x === "number") {
      console.log("Union - null (number): " + (x * 2))
    } else {
      console.log("Union - null (string): " + x.toUpperCase())
    }
  }
}
