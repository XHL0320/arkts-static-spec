/**
 * @id EXP_07_02_01_012_PASS_READONLY_TO_READONLY
 * @expect compile-pass
 * @section 7.2.1
 * @design readonly 数组传给 readonly 参数
 * @note 正向用例：验证只读数组传给只读参数
 */
function takeReadonlyArray(arr: readonly int[]): void {}

function testReadonlyToReadonly(): void {
  let arr: readonly int[] = [1, 2, 3]
  takeReadonlyArray(arr)
}
