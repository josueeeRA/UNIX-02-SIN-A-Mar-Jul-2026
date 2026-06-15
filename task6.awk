#!/usr/bin/awk -f
BEGIN {
    FS = ","
    printf "%-10s %10s %5s\n", "Student", "Percentage", "Grade"
}
NR > 1 {
    student = $1
    earned[student] += $4
    possible[student] += $5
}
END {
    PROCINFO["sorted_in"] = "@ind_str_asc"
    n = asorti(earned, dest)
    if (n > 0) {
        for (i = 1; i <= n; i++) {
            s = dest[i]
            pct = (earned[s] / possible[s]) * 100
            if (pct >= 90) grade = "A"
            else if (pct >= 80) grade = "B"
            else if (pct >= 70) grade = "C"
            else if (pct >= 60) grade = "D"
            else grade = "E"
            printf "%-10s %10.2f %5s\n", s, pct, grade
        }
    } else {
        for (s in earned) {
            pct = (earned[s] / possible[s]) * 100
            if (pct >= 90) grade = "A"
            else if (pct >= 80) grade = "B"
            else if (pct >= 70) grade = "C"
            else if (pct >= 60) grade = "D"
            else grade = "E"
            printf "%-10s %10.2f %5s\n", s, pct, grade
        }
    }
}