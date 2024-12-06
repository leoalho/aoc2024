p←⍉↑⍎¨⊃⎕nget'./day1.txt'1
⎕←+/|-⌿(⊂∘⍋⌷⊢)⍤1⊢p 		⍝ Part 1
⎕←result2←+/∊(⊣+.×∘.=)/↓p	⍝ Part 2