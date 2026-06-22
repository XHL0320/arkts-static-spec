/*
 * @id SEM_15_11_065_PASS_ARCHIVE_interface_extends_order
 * @expect compile-pass
 * @section 15.11
 * @design 归档吸纳：interface extends order。来源 `Overloading\compile-pass\OVERLOAD_PASS_019_interface_extends_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_019_interface_extends_order.ets
 */

interface OverloadPass019I1 {
  select(p: number): string
}

interface OverloadPass019I2 {
  select(p: int): string
}

interface OverloadPass019J extends OverloadPass019I1, OverloadPass019I2 {}

class OverloadPass019Impl implements OverloadPass019J {
  select(p: number): string {
    return 'number'
  }

  select(p: int): string {
    return 'int'
  }
}

function main(): void {
  let v: OverloadPass019J = new OverloadPass019Impl()
  arktest.assertEQ(v.select(19), 'number')
}
