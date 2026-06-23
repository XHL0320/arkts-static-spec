/**
 * @id EXP2_17_13_2_004_PASS_ARRAY_RECEIVER_OPERATIONS
 * @expect compile-pass
 * @section 17.13.2
 * @design 数组接收者进行操作：为数组类型添加多个接收者函数
 * @note 正向用例：验证该特性编译通过的正确用法。使用 push/pop 而非索引访问避免 Double/Int 类型问题
 */
function addElements(this: number[], values: number[]): void {
  for (let elem of values) { this.push(elem) }
}
function clearAll(this: number[]): void {
  while (this.length > 0) { this.pop() }
}
function getLength(this: number[]): number { return this.length }
function testArrayOperations(): void {
  let arr: number[] = [1, 2, 3]
  arr.addElements([4, 5])
  arr.clearAll()
  let len: number = arr.getLength()
  console.log("compiled successfully")
}
