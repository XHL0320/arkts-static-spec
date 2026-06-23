/*
 * @id SEM_15_11_00_012_PASS_ARCHIVE_null_selects_inherited_generic_method
 * @expect compile-pass
 * @section 15.11
 * @design 归档吸纳：null selects inherited generic method。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_001_null_selects_inherited_generic_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\NullishOverloadResolution\compile-pass\SEM_PASS_001_null_selects_inherited_generic_method.ets
 */

class SemPass001Parent {
  res: int = 0

  testedMethod<A>(p: A): SemPass001Parent {
    this.res = 1
    return new SemPass001Parent()
  }
}

class SemPass001Child extends SemPass001Parent {
  testedMethod(p: Object): SemPass001Child {
    this.res = 2
    return new SemPass001Child()
  }
}

function main(): void {
  let c: SemPass001Child = new SemPass001Child()
  c.testedMethod(null)
  arktest.assertTrue(c.res == 1)
}
