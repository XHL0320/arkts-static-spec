/**
 * @id EXP_07_02_01_017_FAIL_READONLY_TO_WRITABLE
 * @expect compile-fail
 * @section 7.2.1
 * @design readonly 数组传给 writable 参数，应编译时错误
 * @note 反向用例：验证 readonly 类型不能传给 non-readonly 参数
 */
function takeWritableArray(arr: int[]): void {}

function testReadonlyToWritable(): void {
  let arr: readonly int[] = [1, 2, 3]
  takeWritableArray(arr)
}
