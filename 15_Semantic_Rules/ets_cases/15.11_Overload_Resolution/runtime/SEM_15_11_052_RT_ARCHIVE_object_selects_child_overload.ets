/*
 * @id SEM_15_11_052_RT_ARCHIVE_object_selects_child_overload
 * @expect runtime
 * @section 15.11
 * @design 归档吸纳：object selects child overload。来源 `NullishOverloadResolution\runtime\SEM_RT_004_object_selects_child_overload.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\NullishOverloadResolution\runtime\SEM_RT_004_object_selects_child_overload.ets
 */

// Expected runtime:
// 2
class SemRt004Parent {
  res: int = 0

  testedMethod<A>(p: A): SemRt004Parent {
    this.res = 1
    return new SemRt004Parent()
  }
}

class SemRt004Child extends SemRt004Parent {
  testedMethod(p: Object): SemRt004Child {
    this.res = 2
    return new SemRt004Child()
  }
}

let c: SemRt004Child = new SemRt004Child()
c.testedMethod(new Object())
console.info(`${c.res}`)
