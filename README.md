# auto-green

[![Build Status](https://github.com/IMXNOOBX/auto-green/workflows/ci/badge.svg?branch=master)](https://github.com/IMXNOOBX/auto-green/actions)

Automatically keep GitHub commit status evergreen.

> a commit a day keeps your girlfriend away.
##  Principle
Use the timed task function of GitHub Actions to automatically execute `git commit` at regular intervals, and the submission information is "a commit a day keeps your girlfriend away", inspired by the question of Zhihu [ How to keep all green for 365 days on GitHub ? kind of experience? ](https://www.zhihu.com/question/34043434/answer/57826281) An anonymous user's answer:

> It used to be all green for more than 200 days, but I left my girlfriend out, and it has been green until now.
For the principle of Github Action, you can check the official document [ Introduction to Github Action ](https://docs.github.com/cn/actions/learn-github-actions/introduction-to-github-actions)
##  use

-Click the **Use this template** button in the upper right corner to copy this GitHub repository, ** : warning : Do not fork, because the dynamics of the fork project will not make you green : warning : **
- Modify [ lines 7 and 8 of the ci.yml file ](https://github.com/justjavac/auto-green/blob/master/.github/workflows/ci.yml#L7-L8) to remove the preceding ` #` sign
- Modify [ lines 19, 20 of the ci.yml file ](https://github.com/justjavac/auto-green/blob/master/.github/workflows/ci.yml#L19-L20) to your own GitHub Account and Nickname
- (Optional) You can do this by modifying [ line 8 of the ci.yml file ](https://github.com/justjavac/auto-green/blob/master/.github/workflows/ci.yml#L8) Adjust frequency

The scheduled task syntax has 5 fields separated by spaces, each field representing a time unit.

```plain
┌────────────── minutes (0 - 59)
│ ┌────────────── Hours (0 - 23)
│ │ ┌────────────── Day (1 - 31)
│ │ │ ┌────────────── Month (1 - 12 or JAN-DEC)
│ │ │ │ ┌────────────── Week of the week (0 - 6 or SUN-SAT)
│ │ │ │ │
│ │ │ │ │
│ │ │ │ │
* * * * *
```

The meaning of each time field:

|symbol | description | example |
| ----- | -----------| -------------------------------------------|
| `*` | any value | `* * * * *` every hour every minute of every day |
| `,` | value separator | `1,3,4,7 * * * *` hourly 1 3 4 7 minutes |
| `-` | range | `1-6 * * * *` 1-6 minutes of every hour |
| `/` | every | `*/15 * * * *` every 15 minutes |

**Note** : Due to the limitation of GitHub Actions, if set to `* * * * *` , the actual execution frequency is once every 5 minutes.

## License

[auto-green](https://github.com/justjavac/auto-green) is released under the MIT License. See the bundled [LICENSE](./LICENSE) file for details.
