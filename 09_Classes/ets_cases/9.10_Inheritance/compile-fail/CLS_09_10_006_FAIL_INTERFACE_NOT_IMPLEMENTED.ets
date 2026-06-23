/**
 * @id CLS_09_10_006_FAIL_INTERFACE_NOT_IMPLEMENTED
 * @expect compile-fail
 * @section 9.10
 * @design 非抽象类实现接口时必须实现所有继承的抽象方法，否则编译失败
 * @note 反向用例：类实现接口但未提供接口中抽象方法的实现
 */
interface Drawable {
  draw(): void
  getColor(): string
}

class Rectangle implements Drawable {
  public width: int = 0
  public height: int = 0
  // 缺少 draw() 实现
  // 缺少 getColor() 实现
}
