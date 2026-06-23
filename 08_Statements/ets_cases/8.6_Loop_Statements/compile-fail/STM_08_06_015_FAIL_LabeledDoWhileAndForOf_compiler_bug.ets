/**
 * @id STM_08_06_015_PASS_LabeledDoWhileAndForOf
 * @expect compile-fail
 * @section 8.6
 * @design 标签可用于全部四种循环类型：除已覆盖的 for 和 while 外，验证 do-while 和 for-of 的标签用法
 * @note loopStatement 语法中 (identifier ':')? 前缀适用于 whileStatement | doStatement | forStatement | forOfStatement 全部形式
 */
function testLabeledDoWhileBreak(): void {
  let i: int = 0;
  dwLabel: do {
    i++;
    if (i === 5) {
      break dwLabel;
    }
  } while (i < 10);
}

function testLabeledDoWhileContinue(): void {
  let sum: int = 0;
  let j: int = 0;
  dwl: do {
    j++;
    if (j % 2 === 0) {
      continue dwl;
    }
    sum += j;
  } while (j < 10);
}

function testLabeledForOfBreak(): void {
  let arr: int[] = [1, 2, 3, 4, 5, 6, 7];
  let found: int = -1;
  search: for (let v of arr) {
    if (v === 4) {
      found = v;
      break search;
    }
  }
}

function testLabeledForOfContinue(): void {
  let arr: int[] = [1, 2, 3, 4, 5];
  let oddSum: int = 0;
  filter: for (let v of arr) {
    if (v % 2 === 0) {
      continue filter;
    }
    oddSum += v;
  }
}

function testNestedLabeledForOf(): void {
  let matrix: int[][] = [[1, 2], [3, 4], [5, 6]];
  let target: int = 3;
  let foundRow: int = -1;
  rowScan: for (let row of matrix) {
    colScan: for (let val of row) {
      if (val === target) {
        break rowScan;
      }
    }
  }
}
