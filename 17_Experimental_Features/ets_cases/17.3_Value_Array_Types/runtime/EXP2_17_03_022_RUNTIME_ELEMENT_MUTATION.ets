/**
 * @id EXP2_17_03_022_RUNTIME_VALUEARRAY_ELEMENT_MUTATION
 * @expect runtime
 * @section 17.3
 * @design 运行时验证 ValueArray 元素可通过索引修改，且修改后值正确持久化
 * @note 运行时用例：实际执行验证元素可变性
 */
function main(): void {
  let a: ValueArray<int> = [1, 2, 3]
  // Verify initial values
  if (!(a[0] == 1)) {
    throw new Error("assertion failed: a[0] should equal 1 before mutation")
  }
  // Mutate element
  a[0] = 100
  if (!(a[0] == 100)) {
    throw new Error("assertion failed: a[0] should equal 100 after mutation")
  }
  // Verify other elements unaffected
  if (!(a[1] == 2)) {
    throw new Error("assertion failed: a[1] should remain 2")
  }
  if (!(a[2] == 3)) {
    throw new Error("assertion failed: a[2] should remain 3")
  }

  // Mutate another element
  a[1] = 200
  if (!(a[1] == 200)) {
    throw new Error("assertion failed: a[1] should equal 200 after mutation")
  }
  if (!(a[0] == 100)) {
    throw new Error("assertion failed: a[0] should remain 100")
  }

  // Test mutation on double array
  let b: ValueArray<double> = [1.0, 2.0]
  b[0] = 99.9
  if (!(b[0] == 99.9)) {
    throw new Error("assertion failed: b[0] should equal 99.9 after mutation")
  }

  console.log("verified")
}
