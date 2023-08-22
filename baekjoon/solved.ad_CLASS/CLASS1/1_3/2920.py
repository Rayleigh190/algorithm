nums = list(map(int, input().split()))

nums1 = nums.copy()
nums1.sort()
nums2 = nums.copy()
nums2.sort(reverse=True)

if nums == nums1:
  print("ascending")
elif nums == nums2:
  print("descending")
else:
  print("mixed")