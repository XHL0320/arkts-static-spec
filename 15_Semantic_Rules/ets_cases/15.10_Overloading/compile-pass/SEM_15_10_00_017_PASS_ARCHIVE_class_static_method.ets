/*
 * @id SEM_15_10_00_017_PASS_ARCHIVE_class_static_method
 * @expect compile-pass
 * @section 15.10
 * @design 归档吸纳：class static method。来源 `Overloading\compile-pass\OVERLOAD_PASS_007_class_static_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_007_class_static_method.ets
 */

class OverloadPass007Static {
  static overload create { fromInt, fromString }

  static fromInt(p: int): string {
    return 'int:' + p.toString()
  }

  static fromString(p: string): string {
    return 'string:' + p
  }
}

function main(): void {
  arktest.assertEQ(OverloadPass007Static.create(7), 'int:7')
  arktest.assertEQ(OverloadPass007Static.create('ark'), 'string:ark')
}
