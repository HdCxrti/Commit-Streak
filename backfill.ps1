$dates = @("2025-06-10", "2025-06-11")

foreach ($date in $dates) {
    $env:GIT_AUTHOR_DATE = "$date 12:00:00"
    $env:GIT_COMMITTER_DATE = "$date 12:00:00"
    
    git commit --allow-empty -m "Backfilled commit for $date"
}

git push origin main
