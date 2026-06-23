/**
 * @id EXP2_17_09_04_002_PASS_CROSS_INHERITANCE
 * @expect compile-pass
 * @section 17.9.4
 * @design overload 名与父类方法同名，跨继承层次工作
 * @note 正向用例：子类中 overload 名与父类方法同名
 */
class Parent {
  handle(a: int): string { return "parent-int:" + a }
  handleStr(a: string): string { return "parent-str:" + a }
  overload handle { handle, handleStr }
}

class Child extends Parent {
  handleBool(a: boolean): string { return "child-bool:" + a }
  // overload 名 "handle" 与父类方法同名，跨继承层次
  overload handle { handle, handleStr, handleBool }
}
