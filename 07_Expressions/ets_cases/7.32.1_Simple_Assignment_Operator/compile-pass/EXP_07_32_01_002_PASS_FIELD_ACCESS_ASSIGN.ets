/**
 * @id EXP_07_32_01_002_PASS_FIELD_ACCESS_ASSIGN
 * @expect compile-pass
 * @section 7.32.1
 * @design 验证字段访问表达式作为左值 e.f = value 的编译通过：int、string、boolean 三种字段类型的赋值
 * @note 正向用例：验证 e.f = rhs 形式的编译通过，包括不同类型的字段赋值
 */

class Point {
  x: int = 0;
  y: int = 0;
  label: string = "";
  visible: boolean = false;
}

function main(): void {
  let p: Point = new Point();

  // int 字段赋值
  p.x = 10;
  p.y = 20;

  // string 字段赋值
  p.label = "origin";

  // boolean 字段赋值
  p.visible = true;

  // 链式字段赋值（通过临时对象）
  let p2: Point = new Point();
  p2.x = 30;

  // 字段之间赋值
  let temp: int = p.x;
  p.y = temp;

  console.log("done");
}
