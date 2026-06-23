/*
 * @id SEM_15_11_00_016_PASS_ARCHIVE_parent_static_type_keeps_parent_generic
 * @expect compile-pass
 * @section 15.11
 * @design 归档吸纳：parent static type keeps parent generic。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_005_parent_static_type_keeps_parent_generic.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\NullishOverloadResolution\compile-pass\SEM_PASS_005_parent_static_type_keeps_parent_generic.ets
 */

class SemPass005Parent {
  res: int = 0

  testedMethod<A>(p: A): SemPass005Parent {
    this.res = 1
    return new SemPass005Parent()
  }
}

class SemPass005Child extends SemPass005Parent {
  testedMethod(p: Object): SemPass005Child {
    this.res = 2
    return new SemPass005Child()
  }
}

function main(): void {
  let c: SemPass005Child = new SemPass005Child()
  let p: SemPass005Parent = c
  p.testedMethod(new Object())
  arktest.assertTrue(c.res == 1)
}
