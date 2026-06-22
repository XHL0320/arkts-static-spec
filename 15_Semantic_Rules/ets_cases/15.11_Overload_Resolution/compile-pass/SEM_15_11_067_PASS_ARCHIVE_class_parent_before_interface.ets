/*
 * @id SEM_15_11_067_PASS_ARCHIVE_class_parent_before_interface
 * @expect compile-pass
 * @section 15.11
 * @design 归档吸纳：class parent before interface。来源 `Overloading\compile-pass\OVERLOAD_PASS_021_class_parent_before_interface.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_021_class_parent_before_interface.ets
 */

interface OverloadPass021I {
  select(p: int): string {
    return 'interface-int'
  }
}

class OverloadPass021Base {
  select(p: number): string {
    return 'base-number'
  }
}

class OverloadPass021Derived extends OverloadPass021Base implements OverloadPass021I {}

function main(): void {
  let v: OverloadPass021Derived = new OverloadPass021Derived()
  arktest.assertEQ(v.select(21), 'base-number')
}
