#!/usr/bin/awk -f
BEGIN {
    FS = ","
    printf "%-10s %3s %4s %7s\n", "Name", "Low", "High", "Average"
}
NR > 1 {
    task = $3
    score = $4
    sum[task] += score
    count[task]++
    if (!(task in min) || score < min[task]) min[task] = score
    if (!(task in max) || score > max[task]) max[task] = score
}
END {
    PROCINFO["sorted_in"] = "@ind_str_asc"
    n = asorti(count, dest)
    if (n > 0) {
        for (i = 1; i <= n; i++) {
            t = dest[i]
            avg = sum[t] / count[t]
            printf "%-10s %3d %4d %7.2f\n", t, min[t], max[t], avg
        }
    } else {
        for (t in count) {
            avg = sum[t] / count[t]
            printf "%-10s %3d %4d %7.2f\n", t, min[t], max[t], avg
        }
    }
}