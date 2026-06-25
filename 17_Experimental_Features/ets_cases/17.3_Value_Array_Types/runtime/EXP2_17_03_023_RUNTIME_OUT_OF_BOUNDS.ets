/**
 * @id EXP2_17_03_023_RUNTIME_OUT_OF_BOUNDS
 * @expect runtime
 * @section 17.3
 * @design 运行时验证 ValueArray 越界索引访问的行为（应抛出异常或返回 undefined）
 * @note 运行时用例：实际执行验证越界访问的运行时行为
 */
function main(): void {
  let a: ValueArray<int> = [1, 2, 3]
  // Verify valid access works
  if (!(a[0] == 1)) {
    throw new Error("assertion failed: valid access a[0] should work")
  }
  if (!(a[2] == 3)) {
    throw new Error("assertion failed: valid access a[2] should work")
  }

  // Verify out-of-bounds access throws
  let outOfBoundsCaught: boolean = false
  try {
    let bad: int = a[10]
  } catch (e) {
    outOfBoundsCaught = true
  }
  if (!outOfBoundsCaught) {
    throw new Error("assertion failed: out-of-bounds access should throw")
  }

  // Verify negative index access throws
  let negativeIndexCaught: boolean = false
  try {
    let bad: int = a[-1]
  } catch (e) {
    negativeIndexCaught = true
  }
  if (!negativeIndexCaught) {
    throw new Error("assertion failed: negative index access should throw")
  }

  // Verify valid boundary access works
  if (!(a[2] == 3)) {
    throw new Error("assertion failed: a[2] boundary access should still work")
  }

  console.log("verified")
}
