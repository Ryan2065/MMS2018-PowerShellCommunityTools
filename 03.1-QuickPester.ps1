Function Get-MMSChildItem {
    Param(
        [string]$Path,
        [bool]$Recurse
    )
    Get-ChildItem -Path $Path -Recurse:$Recurse
}