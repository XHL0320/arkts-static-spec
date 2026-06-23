/**
 * @id EXP_07_11_04_006_PASS_RETURN_IN_EXPRESSION
 * @expect compile-pass
 * @section 7.11.4
 * @design 验证方法返回值在表达式中使用，编译通过
 * @note 正向用例：多个方法返回值参与表达式运算，编译通过
 */
class Point {
  getX(): int {
    return 3;
  }
  getY(): int {
    return 4;
  }
}

function main(): void {
  let p: Point = new Point();
  let sum: int = p.getX() + p.getY();
  let product: int = p.getX() * p.getY();
}
