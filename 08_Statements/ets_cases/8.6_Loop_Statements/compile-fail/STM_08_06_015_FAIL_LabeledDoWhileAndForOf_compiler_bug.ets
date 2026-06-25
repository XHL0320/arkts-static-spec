/**
 * @id STM_08_06_015_FAIL_LabeledDoWhileAndForOf_compiler_bug
 * @expect compile-fail
 * @section 8.6
 * @design spec §8.6 允许 labeled do-while / for-of（(identifier ':')? 前缀适用于 while|do|for|forOf 全部循环），本用例验证该正向语义
 * @note ⚠️ 编译器崩溃 C-8.06-02：es2panda 编译 labeled do-while/for-of 时 SIGABRT (exit 134, core dump)，属编译器 bug；本用例按崩溃结果标 compile-fail，差异见 issue_report C-8.06-02
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
