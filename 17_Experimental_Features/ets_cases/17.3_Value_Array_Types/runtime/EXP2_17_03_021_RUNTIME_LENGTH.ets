/**
 * @id EXP2_17_03_021_RUNTIME_LENGTH
 * @expect runtime
 * @section 17.3
 * @design 运行时验证 ValueArray 的 length 属性正确反映数组元素数量
 * @note 运行时用例：实际执行验证不同创建方式下 length 属性的正确性
 */
function main(): void {
  let a: ValueArray<int> = [1, 2, 3]
  if (!(a.length == 3)) {
    throw new Error("assertion failed: a.length should equal 3")
  }

  let b: ValueArray<double> = [7., 8.]
  if (!(b.length == 2)) {
    throw new Error("assertion failed: b.length should equal 2")
  }

  let c: ValueArray<int> = new ValueArray<int>(5, 0)
  if (!(c.length == 5)) {
    throw new Error("assertion failed: c.length should equal 5")
  }

  let d: ValueArray<double> = new ValueArray<double>(4, 3.14)
  if (!(d.length == 4)) {
    throw new Error("assertion failed: d.length should equal 4")
  }

  let e: ValueArray<char> = [c'x']
  if (!(e.length == 1)) {
    throw new Error("assertion failed: e.length should equal 1")
  }

  console.log("verified")
}
