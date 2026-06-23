/**
 * @id EXP2_17_16_003_PASS_INSTANCEOF_BRANCH
 * @expect compile-pass
 * @section 17.16
 * @design 基于 instanceof 的条件分支——模拟模式匹配的类型分发
 * @note 正向用例：验证在 if-else 分支中使用 instanceof 实现类型分发编译通过
 */
class Shape {
  name: string = "shape"
}
class Circle extends Shape {
  radius: double = 1.0
}
class Rect extends Shape {
  width: double = 1.0
  height: double = 1.0
}

function processShape(s: Shape): string {
  if (s instanceof Circle) {
    return "circle"
  } else if (s instanceof Rect) {
    return "rect"
  } else {
    return "unknown"
  }
}

function testInstanceofBranch(): void {
  let c: Shape = new Circle()
  let r: Shape = new Rect()
  console.log("c=" + processShape(c) + " r=" + processShape(r))
}
