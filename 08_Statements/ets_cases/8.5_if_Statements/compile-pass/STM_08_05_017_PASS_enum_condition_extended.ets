/**
 * @id STM_08_05_017_PASS_enum_condition_extended
 * @expect compile-pass
 * @section 8.5
 * @design enum 类型作为 if 条件的 Extended Conditional 语义补充 — 覆盖 if 无 else 分支、if-else-if 链、no-block if 等未覆盖模式
 * @note 正向用例：enum 底层为 0 → falsy，非 0 → truthy；补充 if-without-else 和 no-block 模式
 */
enum Direction {
  NORTH = 0,
  SOUTH = 1,
  EAST = 2,
  WEST = 3
}

enum Flag {
  OFF = 0,
  ON = 1
}

function testEnumIfWithoutElse(): void {
  let d1: Direction = Direction.SOUTH
  if (d1) { let x: int = 1 }
  let d2: Direction = Direction.NORTH
  if (d2) { let x: int = 99 }
  let d3: Direction = Direction.WEST
  if (d3) { let x: int = 2 }
}

function testEnumIfElseIfChain(): void {
  let f: Flag = Flag.ON
  if (f == Flag.OFF) {
    let x: int = 1
  } else if (f == Flag.ON) {
    let x: int = 2
  }
}

function testEnumNoBlockIf(): void {
  let d: Direction = Direction.EAST
  let r: int = 0
  if (d) r = 1
  let n: Direction = Direction.NORTH
  if (n) r = 99
}

function testEnumLiteralCondition(): void {
  if (Direction.NORTH) { let x: int = 99 }
  if (Direction.SOUTH) { let x: int = 1 }
  if (Flag.OFF) { let x: int = 99 }
  if (Flag.ON) { let x: int = 2 }
}
