$IP= "8.8.8.8"

do {
    if (!(Test-Connection $IP -count 1)) {
        write-host "$(get-date -f yyyy-MM-dd_hh-mm-ss)`tping failed"
    } else {
        write-host "$(get-date -f yyyy-MM-dd_hh-mm-ss)`tping succedded"
    }
    sleep 5
    $result
} while (!([ System.Environment ]:: HasShutdownStarted ))