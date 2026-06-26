/**
 * @id EXP2_17_9_4_009_COMPILE_PASS_NAMECONFLICT_STATIC_METHOD
 * @expect compile-pass
 * @section 17.9.4
 * @design 验证 overload 名可以与类中其他方法共存（非冲突场景）
 * @note 正向用例：overload 集合在类中与其他方法共存，只要方法不在 overload 列表中就不会冲突
 */
class Service {
  log(x: int): string { return "int-log:" + x.toString() }
  logStr(x: string): string { return "str-log:" + x }
  overload log { log, logStr }
  // 额外方法：不在 overload 集中，独立调用
  extra(): string { return "extra" }
}

function main(): void {
  let s: Service = new Service()
  let r1: string = s.log(42)
  let r2: string = s.extra()
  console.log(r1 + r2)
}
