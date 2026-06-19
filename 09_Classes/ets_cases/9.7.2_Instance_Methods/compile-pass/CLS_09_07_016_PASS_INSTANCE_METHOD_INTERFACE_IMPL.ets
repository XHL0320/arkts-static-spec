/**
 * @id CLS_09_07_016_PASS_INSTANCE_METHOD_INTERFACE_IMPL
 * @expect compile-pass
 * @section 9.7.2
 * @design 实例方法实现接口方法：类通过implements声明实现接口，实例方法提供具体实现
 * @note 正向用例：多个接口方法由实例方法实现，支持不同返回类型和参数
 */
interface Shape016 {
  area(): double
  perimeter(): double
  scale(factor: double): void
}

interface Labeled016 {
  getLabel(): string
  setLabel(label: string): void
}

class Circle016 implements Shape016, Labeled016 {
  private _radius: double
  private _label: string

  constructor(radius: double, label: string) {
    this._radius = radius
    this._label = label
  }

  // Instance method implementing interface method
  area(): double {
    return 3.14159 * this._radius * this._radius
  }

  // Instance method implementing interface method
  perimeter(): double {
    return 2.0 * 3.14159 * this._radius
  }

  // Instance method implementing interface method with parameter
  scale(factor: double): void {
    this._radius = this._radius * factor
  }

  // Instance method implementing Labeled016 interface
  getLabel(): string {
    return this._label
  }

  // Instance method implementing Labeled016 interface
  setLabel(label: string): void {
    this._label = label
  }

  // Additional instance method not from any interface
  diameter(): double {
    return 2.0 * this._radius
  }
}

function testInterfaceImplMethods(): void {
  let c: Circle016 = new Circle016(5.0, "MyCircle")
  let a: double = c.area()
  let p: double = c.perimeter()
  c.scale(2.0)
  let a2: double = c.area()
  let lbl: string = c.getLabel()
  c.setLabel("ScaledCircle")
  let d: double = c.diameter()
}
