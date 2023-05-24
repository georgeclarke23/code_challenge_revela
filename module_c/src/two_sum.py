from typing import Dict, List


def two_sum(nums: List[int], target: int) -> List[int]:
    prev_map: Dict[int, int] = {}
    print(nums)

    for i, n in enumerate(nums):
        diff = target - n
        if diff in prev_map:
            return [prev_map[diff], i]
        prev_map[n] = i

    return []
