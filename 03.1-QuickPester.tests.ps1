. "$PSScriptRoot\03.1-QuickPester.ps1"

Describe 'Get-MMSChildItem' {
    Mock Get-ChildItem -MockWith { } -Verifiable
    Get-MMSChildItem -Path 'C:\'
    It 'Called Get-ChildItem correctly' {
        Assert-MockCalled -CommandName Get-ChildItem -Times 1 -Exactly -ParameterFilter {
            ($Path -eq 'C:\') -and
            ($Recurse -eq $true)
        }
    }
}