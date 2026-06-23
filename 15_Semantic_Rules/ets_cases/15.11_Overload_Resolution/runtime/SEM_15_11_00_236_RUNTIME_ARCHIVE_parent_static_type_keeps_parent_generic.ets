/*
 * @id SEM_15_11_00_236_RUNTIME_ARCHIVE_parent_static_type_keeps_parent_generic
 * @expect runtime
 * @section 15.11
 * @design 归档吸纳：parent static type keeps parent generic。来源 `NullishOverloadResolution\runtime\SEM_RT_005_parent_static_type_keeps_parent_generic.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\NullishOverloadResolution\runtime\SEM_RT_005_parent_static_type_keeps_parent_generic.ets
 */

// Expected runtime:
// 1
class SemRt005Parent {
  res: int = 0

  testedMethod<A>(p: A): SemRt005Parent {
    this.res = 1
    return new SemRt005Parent()
  }
}

class SemRt005Child extends SemRt005Parent {
  testedMethod(p: Object): SemRt005Child {
    this.res = 2
    return new SemRt005Child()
  }
}

let c: SemRt005Child = new SemRt005Child()
let p: SemRt005Parent = c
p.testedMethod(new Object())
console.info(`${c.res}`)
