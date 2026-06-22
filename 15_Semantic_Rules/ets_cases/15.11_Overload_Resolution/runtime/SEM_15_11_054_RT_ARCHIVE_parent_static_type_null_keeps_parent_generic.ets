/*
 * @id SEM_15_11_054_RT_ARCHIVE_parent_static_type_null_keeps_parent_generic
 * @expect runtime
 * @section 15.11
 * @design 归档吸纳：parent static type null keeps parent generic。来源 `NullishOverloadResolution\runtime\SEM_RT_006_parent_static_type_null_keeps_parent_generic.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\NullishOverloadResolution\runtime\SEM_RT_006_parent_static_type_null_keeps_parent_generic.ets
 */

// Expected runtime:
// 1
class SemRt006Parent {
  res: int = 0

  testedMethod<A>(p: A): SemRt006Parent {
    this.res = 1
    return new SemRt006Parent()
  }
}

class SemRt006Child extends SemRt006Parent {
  testedMethod(p: Object): SemRt006Child {
    this.res = 2
    return new SemRt006Child()
  }
}

let c: SemRt006Child = new SemRt006Child()
let p: SemRt006Parent = c
p.testedMethod(null)
console.info(`${c.res}`)
