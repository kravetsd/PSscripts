Get-WmiObject -Class Win32_LogicalDisk | ForEach-Object {
$freespace_percents = (($_.freespace/$_.size)*100)
$freespace_percents}


foreach ( $item in (Get-WmiObject -Class Win32_LogicalDisk))
 {
    if (($item.freeSpace/$item.Size) -le 0.7)
     
        {
    " Please check disk " + $item.DeviceID +"!"+ " Available free disk space is " +  [math]::Round((($item.freeSpace/$item.Size)*100)) + "%" }
    Else 
    { " It is ok with disk " + $item.DeviceID }
    }
