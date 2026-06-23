/**
 * @id EXP2_17_09_04_007_FAIL_CROSS_INHERITANCE_CONFLICT
 * @expect compile-fail
 * @section 17.9.4
 * @design 跨继承层次，父类方法不在子类 overload 列表中 — 编译错误
 * @note 反向用例：子类 overload 名与父类方法同名但未列出父类方法
 */
class Ancestor {
  transform(a: int): string { return "int:" + a }
  transformStr(a: string): string { return "str:" + a }
  overload transform { transform, transformStr }
}

class Descendant extends Ancestor {
  transform(a: int): string { return "override-int:" + a }
  transformStr(a: string): string { return "override-str:" + a }
  transformBool(a: boolean): string { return "override-bool:" + a }
  // overload 名 "transform" 与父类方法同名
  // 但列表只包含 transformStr 和 transformBool，不包含 transform — 编译错误
  overload transform { transformStr, transformBool }
}
