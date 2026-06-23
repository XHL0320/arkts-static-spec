/*
 * @id SEM_15_10_00_018_PASS_ARCHIVE_interface_overload_inherited_by_class
 * @expect compile-pass
 * @section 15.10
 * @design 归档吸纳：interface overload inherited by class。来源 `Overloading\compile-pass\OVERLOAD_PASS_008_interface_overload_inherited_by_class.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_008_interface_overload_inherited_by_class.ets
 */

interface OverloadPass008I {
  readInt(p: int): string
  readString(p: string): string
  overload read { readInt, readString }
}

class OverloadPass008Impl implements OverloadPass008I {
  readInt(p: int): string {
    return 'int:' + p.toString()
  }

  readString(p: string): string {
    return 'string:' + p
  }
}

function main(): void {
  let v: OverloadPass008I = new OverloadPass008Impl()
  arktest.assertEQ(v.read(8), 'int:8')
  arktest.assertEQ(v.read('ark'), 'string:ark')
}
