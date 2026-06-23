/**
 * @id EXP_07_28_01_010_PASS_OBJECT_WRAPPER
 * @expect compile-pass
 * @section 7.28.1
 * @design 验证数值与 Number 包装对象等值比较（spec 示例：5 == new Number(5)）
 * @note 正向用例：数值与 Number 包装对象应可正常编译比较
 */
function main(): void {
  let i: int = 5;
  let n: Number = new Number(5);

  // spec example: 5 == new Number(5) // true
  let r1: boolean = i == n;
  // spec example: 5 === new Number(5) // true
  let r2: boolean = i === n;
  // !=
  let r3: boolean = i != n;
  let r4: boolean = i !== n;
}
