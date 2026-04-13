#### Checklist

Some helpful practices in scientific programming, as a checklist:

- [ ] Code runs from a "blank slate." E.g.: ```rm(list = ls())```

- [ ] Code has hierarchical structure:
  - one file / one goal
  - one block / one step
  - one line / one operation

- [ ] Comments at top of file and for each block that state their purpose. If lines are well written most won't need comments.

- [ ] Lines are < 80 characters long

- [ ] Variable names are short and informative, or very short and generic if used hyperlocally (e.g. using ```x``` as a variable is ok if you only use it within a radius of about 10 lines)

- [ ] Key steps have code that verifies they are working correctly

- [ ] All parameters are at the top of the script or block

#### Tips

- Follow a style guide
- Maintain a single “wet edge” — the code above your current line should already work. If it doesn’t, move up until it does; that boundary is your wet edge
- Use pipes sparingly (one line / one operation). It is possible to write beautiful code without them and they are harder to debug
- When in doubt, or when you encounter a bug, clean up: refine the comments that title your blocks, make your variable names more informative, implement short tests / proofs for blocks you believe are working
