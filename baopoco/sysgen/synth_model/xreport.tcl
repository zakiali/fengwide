if {[file exists {baopoco_cw.ise}] && [file exists {baopoco_cw.xise}] && [file exists {baopoco_cw.gise}]} {
    project open {baopoco_cw}
} else {
    file delete {baopoco_cw.ise} {baopoco_cw.xise} {baopoco_cw.gise}
    project new {baopoco_cw}
}
project set "Enable Enhanced Design Summary" true
project set "Enable Message Filtering" true
project set "Display Incremental Messages" true
project set "Message Filter File" {../filter.filter}
project close
