/*
 * @id SEM_15_10_042_PASS_ARCHIVE_constructor_overload
 * @expect compile-pass
 * @section 15.10
 * @design 归档吸纳：constructor overload。来源 `Overloading\compile-pass\OVERLOAD_PASS_010_constructor_overload.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_010_constructor_overload.ets
 */

class OverloadPass010Box {
  value: string

  constructor() {
    this.value = 'empty'
  }

  constructor(p: int) {
    this.value = 'int:' + p.toString()
  }
}

function main(): void {
  arktest.assertEQ(new OverloadPass010Box().value, 'empty')
  arktest.assertEQ(new OverloadPass010Box(10).value, 'int:10')
}
