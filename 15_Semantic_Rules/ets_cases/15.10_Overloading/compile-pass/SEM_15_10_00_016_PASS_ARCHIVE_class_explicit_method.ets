/*
 * @id SEM_15_10_00_016_PASS_ARCHIVE_class_explicit_method
 * @expect compile-pass
 * @section 15.10
 * @design 归档吸纳：class explicit method。来源 `Overloading\compile-pass\OVERLOAD_PASS_006_class_explicit_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_006_class_explicit_method.ets
 */

class OverloadPass006Processor {
  overload process { processInt, processString }

  processInt(p: int): string {
    return 'int:' + p.toString()
  }

  processString(p: string): string {
    return 'string:' + p
  }
}

function main(): void {
  let p: OverloadPass006Processor = new OverloadPass006Processor()
  arktest.assertEQ(p.process(6), 'int:6')
  arktest.assertEQ(p.process('ark'), 'string:ark')
}
