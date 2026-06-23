/**
 * @id SEM_15_11_06_001_PASS_CTOR_RESOLUTION
 * @expect compile-pass
 * @section 15.11.6
 * @design 验证构造函数重载解析
 * @note 正向用例：构造函数根据实参类型选择正确的重载
 */
class Point {
  constructor(x: int, y: int) {}
  constructor(x: int) {}
}
function main(): void {
  let p = new Point(1);
}
