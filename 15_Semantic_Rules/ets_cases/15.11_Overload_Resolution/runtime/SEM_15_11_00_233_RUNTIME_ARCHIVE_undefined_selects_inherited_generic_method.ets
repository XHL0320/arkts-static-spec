/*
 * @id SEM_15_11_00_233_RUNTIME_ARCHIVE_undefined_selects_inherited_generic_method
 * @expect runtime
 * @section 15.11
 * @design 归档吸纳：undefined selects inherited generic method。来源 `NullishOverloadResolution\runtime\SEM_RT_002_undefined_selects_inherited_generic_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\NullishOverloadResolution\runtime\SEM_RT_002_undefined_selects_inherited_generic_method.ets
 */

// Expected runtime:
// 1
class SemRt002Parent {
  res: int = 0

  testedMethod<A>(p: A): SemRt002Parent {
    this.res = 1
    return new SemRt002Parent()
  }
}

class SemRt002Child extends SemRt002Parent {
  testedMethod(p: Object): SemRt002Child {
    this.res = 2
    return new SemRt002Child()
  }
}

let c: SemRt002Child = new SemRt002Child()
c.testedMethod(undefined)
console.info(`${c.res}`)
