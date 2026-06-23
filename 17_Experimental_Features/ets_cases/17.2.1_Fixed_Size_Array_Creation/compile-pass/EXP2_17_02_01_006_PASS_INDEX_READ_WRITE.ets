/**
 * @id EXP2_17_02_01_006_PASS_INDEX_READ_WRITE
 * @expect compile-pass
 * @section 17.2.1
 * @design FixedArray 下标读写访问：验证 a[idx] 读和 a[idx] = val 写操作正确编译
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testIndexReadWrite(): void {
  let a: FixedArray<int> = new FixedArray<int>(5, 0)
  a[1] = 7
  a[2] = 14
  let y: int = a[2]
  let z: int = a[1]
  console.log(y)
  console.log(z)
  console.log(a[0])
  console.log(a.length)
}
