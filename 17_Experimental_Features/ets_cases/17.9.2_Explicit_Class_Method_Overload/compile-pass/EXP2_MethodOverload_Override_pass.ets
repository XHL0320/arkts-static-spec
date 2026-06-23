/**
 * @id EXP2_17_09_02_005_PASS_OVERRIDE
 * @expect compile-pass
 * @section 17.9.2
 * @design 子类覆盖父类 overload，必须列出所有父类方法
 * @note 正向用例：override overload 包含所有父类方法
 */
class Base {
  methodA(a: int): string { return "base-int:" + a }
  methodB(a: string): string { return "base-str:" + a }
  overload process { methodA, methodB }
}

class Derived extends Base {
  methodA(a: int): string { return "derived-int:" + a }
  methodB(a: string): string { return "derived-str:" + a }
  overload process { methodA, methodB }
}
