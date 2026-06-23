/**
 * @id EXP_07_04_02_005_PASS_INDIVIDUAL_OVERLOAD_METHOD_REF
 * @expect compile-pass
 * @section 7.4.2
 * @design 单个显式重载方法引用：验证显式重载中单个方法名可以作为引用
 * @note 正向用例：foo2 是显式重载中的单个方法，可以作为引用编译通过
 */
class C {
  foo1(n: number): void {}
  foo2(s: string): void {}
  overload foo { foo1, foo2 }
}

let y = new C().foo2  // OK，引用单个显式重载方法
