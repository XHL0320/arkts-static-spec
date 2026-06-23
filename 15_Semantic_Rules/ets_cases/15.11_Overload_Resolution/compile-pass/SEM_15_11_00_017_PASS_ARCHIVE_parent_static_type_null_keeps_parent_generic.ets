/*
 * @id SEM_15_11_00_017_PASS_ARCHIVE_parent_static_type_null_keeps_parent_generic
 * @expect compile-pass
 * @section 15.11
 * @design 归档吸纳：parent static type null keeps parent generic。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_006_parent_static_type_null_keeps_parent_generic.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\NullishOverloadResolution\compile-pass\SEM_PASS_006_parent_static_type_null_keeps_parent_generic.ets
 */

class SemPass006Parent {
  res: int = 0

  testedMethod<A>(p: A): SemPass006Parent {
    this.res = 1
    return new SemPass006Parent()
  }
}

class SemPass006Child extends SemPass006Parent {
  testedMethod(p: Object): SemPass006Child {
    this.res = 2
    return new SemPass006Child()
  }
}

function main(): void {
  let c: SemPass006Child = new SemPass006Child()
  let p: SemPass006Parent = c
  p.testedMethod(null)
  arktest.assertTrue(c.res == 1)
}
