/*
 * @id SEM_15_11_045_PASS_ARCHIVE_explicit_null_generic_selects_parent
 * @expect compile-pass
 * @section 15.11
 * @design 归档吸纳：explicit null generic selects parent。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_003_explicit_null_generic_selects_parent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\NullishOverloadResolution\compile-pass\SEM_PASS_003_explicit_null_generic_selects_parent.ets
 */

class SemPass003Parent {
  res: int = 0

  testedMethod<A>(p: A): SemPass003Parent {
    this.res = 1
    return new SemPass003Parent()
  }
}

class SemPass003Child extends SemPass003Parent {
  testedMethod(p: Object): SemPass003Child {
    this.res = 2
    return new SemPass003Child()
  }
}

function main(): void {
  let c: SemPass003Child = new SemPass003Child()
  c.testedMethod<null>(null)
  arktest.assertTrue(c.res == 1)
}
