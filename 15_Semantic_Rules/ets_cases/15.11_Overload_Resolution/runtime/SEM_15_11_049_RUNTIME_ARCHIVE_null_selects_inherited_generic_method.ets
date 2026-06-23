/*
 * @id SEM_15_11_049_RUNTIME_ARCHIVE_null_selects_inherited_generic_method
 * @expect runtime
 * @section 15.11
 * @design 归档吸纳：null selects inherited generic method。来源 `NullishOverloadResolution\runtime\SEM_RT_001_null_selects_inherited_generic_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\NullishOverloadResolution\runtime\SEM_RT_001_null_selects_inherited_generic_method.ets
 */

// Expected runtime:
// 1
class SemRt001Parent {
  res: int = 0

  testedMethod<A>(p: A): SemRt001Parent {
    this.res = 1
    return new SemRt001Parent()
  }
}

class SemRt001Child extends SemRt001Parent {
  testedMethod(p: Object): SemRt001Child {
    this.res = 2
    return new SemRt001Child()
  }
}

let c: SemRt001Child = new SemRt001Child()
c.testedMethod(null)
console.info(`${c.res}`)
