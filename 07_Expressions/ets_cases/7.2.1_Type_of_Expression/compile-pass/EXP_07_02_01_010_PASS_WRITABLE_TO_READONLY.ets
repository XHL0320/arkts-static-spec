/**
 * @id EXP_07_02_01_010_PASS_WRITABLE_TO_READONLY
 * @expect compile-pass
 * @section 7.2.1
 * @design writable 数组传给 readonly 参数始终安全
 * @note 正向用例：验证读写数组可传给只读参数
 */
function takeReadonlyArray(arr: readonly int[]): void {}

function testWritableToReadonly(): void {
  let arr: int[] = [1, 2, 3]
  takeReadonlyArray(arr)
}
