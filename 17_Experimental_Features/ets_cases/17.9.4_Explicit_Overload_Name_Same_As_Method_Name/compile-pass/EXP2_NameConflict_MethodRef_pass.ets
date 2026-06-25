/**
 * @id EXP2_NameConflict_MethodRef_pass
 * @expect compile-pass
 * @section 17.9.4
 * @design overload 名与实际方法名共存，可分别使用
 * @note 正向用例：overload 名用于调用，实际方法名可直接调用
 */
class RefDemo {
  doWork(a: int): string { return "int:" + a }
  doWorkStr(a: string): string { return "str:" + a }
  overload doWork { doWork, doWorkStr }
}

function main(): void {
  let d: RefDemo = new RefDemo()
  // overload 名调用
  let r1: string = d.doWork(42)
  let r2: string = d.doWork("hello")
  // 直接调用具体方法名（不受 overload 影响）
  let r3: string = d.doWorkStr("world")
  console.log(r1 + ", " + r2 + ", " + r3)
}
