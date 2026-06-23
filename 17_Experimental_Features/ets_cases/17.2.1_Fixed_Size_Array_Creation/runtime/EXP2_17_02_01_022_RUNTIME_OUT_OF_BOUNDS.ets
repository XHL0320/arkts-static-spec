/**
 * @id EXP2_17_02_01_022_RUNTIME_OUT_OF_BOUNDS
 * @expect runtime
 * @section 17.2.1
 * @design 运行时验证 FixedArray 越界下标访问抛出运行时错误
 * @note 运行时用例：数组长度为 3，访问 a[3] 应抛出运行时错误（out of bounds）
 */
function main(): void {
  let a: FixedArray<int> = new FixedArray<int>(3, 1)
  let caught: boolean = false
  try {
    let y: int = a[3]
    console.log(y)
  } catch (e) {
    caught = true
  }
  if (!caught) {
    throw new Error("assertion failed: out-of-bounds access should have thrown")
  }

  let caughtNegative: boolean = false
  try {
    let z: int = a[-1]
    console.log(z)
  } catch (eNeg) {
    caughtNegative = true
  }
  if (!caughtNegative) {
    throw new Error("assertion failed: negative index access should have thrown")
  }
  console.log("verified")
}
