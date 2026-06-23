/*
 * @id SEM_15_11_00_013_PASS_ARCHIVE_undefined_selects_inherited_generic_method
 * @expect compile-pass
 * @section 15.11
 * @design 归档吸纳：undefined selects inherited generic method。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_002_undefined_selects_inherited_generic_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\NullishOverloadResolution\compile-pass\SEM_PASS_002_undefined_selects_inherited_generic_method.ets
 */

class SemPass002Parent {
  res: int = 0

  testedMethod<A>(p: A): SemPass002Parent {
    this.res = 1
    return new SemPass002Parent()
  }
}

class SemPass002Child extends SemPass002Parent {
  testedMethod(p: Object): SemPass002Child {
    this.res = 2
    return new SemPass002Child()
  }
}

function main(): void {
  let c: SemPass002Child = new SemPass002Child()
  c.testedMethod(undefined)
  arktest.assertTrue(c.res == 1)
}
