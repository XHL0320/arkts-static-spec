/*
 * @id SEM_15_11_00_022_PASS_ARCHIVE_interface_override_dedup
 * @expect compile-pass
 * @section 15.11
 * @design 归档吸纳：interface override dedup。来源 `Overloading\compile-pass\OVERLOAD_PASS_020_interface_override_dedup.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_020_interface_override_dedup.ets
 */

interface OverloadPass020I1 {
  select(p: number): string
}

interface OverloadPass020I2 {
  select(p: string): string
  select(p: boolean): string
}

interface OverloadPass020K extends OverloadPass020I1, OverloadPass020I2 {
  select(p: string): string
}

class OverloadPass020Impl implements OverloadPass020K {
  select(p: number): string {
    return 'number'
  }

  select(p: string): string {
    return 'string'
  }

  select(p: boolean): string {
    return 'boolean'
  }
}

function main(): void {
  let v: OverloadPass020K = new OverloadPass020Impl()
  arktest.assertEQ(v.select('ark'), 'string')
  arktest.assertEQ(v.select(20), 'number')
  arktest.assertEQ(v.select(true), 'boolean')
}
