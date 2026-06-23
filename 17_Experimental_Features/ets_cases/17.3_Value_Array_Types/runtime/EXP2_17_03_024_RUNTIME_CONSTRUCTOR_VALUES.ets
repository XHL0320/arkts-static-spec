/**
 * @id EXP2_17_03_024_RUNTIME_VALUEARRAY_CONSTRUCTOR_VALUES
 * @expect runtime
 * @section 17.3
 * @design 运行时验证构造函数创建的 ValueArray 元素值和 length 正确
 * @note 运行时用例：实际执行验证 new ValueArray<T>(len, elem) 的正确性
 */
function main(): void {
  let a: ValueArray<int> = new ValueArray<int>(5, 0)
  if (!(a.length == 5)) {
    throw new Error("assertion failed: length should equal 5")
  }
  // All elements should be 0
  if (!(a[0] == 0)) {
    throw new Error("assertion failed: a[0] should equal 0")
  }
  if (!(a[1] == 0)) {
    throw new Error("assertion failed: a[1] should equal 0")
  }
  if (!(a[2] == 0)) {
    throw new Error("assertion failed: a[2] should equal 0")
  }
  if (!(a[3] == 0)) {
    throw new Error("assertion failed: a[3] should equal 0")
  }
  if (!(a[4] == 0)) {
    throw new Error("assertion failed: a[4] should equal 0")
  }

  let b: ValueArray<double> = new ValueArray<double>(3, 7.)
  if (!(b.length == 3)) {
    throw new Error("assertion failed: b.length should equal 3")
  }
  // All elements should be 7.0
  if (!(b[0] == 7.)) {
    throw new Error("assertion failed: b[0] should equal 7.0")
  }
  if (!(b[1] == 7.)) {
    throw new Error("assertion failed: b[1] should equal 7.0")
  }
  if (!(b[2] == 7.)) {
    throw new Error("assertion failed: b[2] should equal 7.0")
  }

  // Verify elements can be independently mutated
  b[1] = 42.0
  if (!(b[1] == 42.0)) {
    throw new Error("assertion failed: b[1] should equal 42.0 after mutation")
  }
  if (!(b[0] == 7.)) {
    throw new Error("assertion failed: b[0] should remain 7.0")
  }
  if (!(b[2] == 7.)) {
    throw new Error("assertion failed: b[2] should remain 7.0")
  }

  console.log("verified")
}
