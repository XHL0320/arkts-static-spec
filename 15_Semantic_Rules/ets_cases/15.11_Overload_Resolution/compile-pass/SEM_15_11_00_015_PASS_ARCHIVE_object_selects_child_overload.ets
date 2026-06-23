/*
 * @id SEM_15_11_00_015_PASS_ARCHIVE_object_selects_child_overload
 * @expect compile-pass
 * @section 15.11
 * @design 归档吸纳：object selects child overload。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_004_object_selects_child_overload.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\NullishOverloadResolution\compile-pass\SEM_PASS_004_object_selects_child_overload.ets
 */

class SemPass004Parent {
  res: int = 0

  testedMethod<A>(p: A): SemPass004Parent {
    this.res = 1
    return new SemPass004Parent()
  }
}

class SemPass004Child extends SemPass004Parent {
  testedMethod(p: Object): SemPass004Child {
    this.res = 2
    return new SemPass004Child()
  }
}

function main(): void {
  let c: SemPass004Child = new SemPass004Child()
  c.testedMethod(new Object())
  arktest.assertTrue(c.res == 2)
}
