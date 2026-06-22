/*
 * @id SEM_15_11_051_RT_ARCHIVE_explicit_null_generic_selects_parent
 * @expect runtime
 * @section 15.11
 * @design 归档吸纳：explicit null generic selects parent。来源 `NullishOverloadResolution\runtime\SEM_RT_003_explicit_null_generic_selects_parent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\NullishOverloadResolution\runtime\SEM_RT_003_explicit_null_generic_selects_parent.ets
 */

// Expected runtime:
// 1
class SemRt003Parent {
  res: int = 0

  testedMethod<A>(p: A): SemRt003Parent {
    this.res = 1
    return new SemRt003Parent()
  }
}

class SemRt003Child extends SemRt003Parent {
  testedMethod(p: Object): SemRt003Child {
    this.res = 2
    return new SemRt003Child()
  }
}

let c: SemRt003Child = new SemRt003Child()
c.testedMethod<null>(null)
console.info(`${c.res}`)
