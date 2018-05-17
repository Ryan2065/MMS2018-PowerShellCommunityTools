
ConvertFrom-ExcelToSQLInsert People C:\Users\LabAdmin\Desktop\Excel-Examples\testSQLGen.xlsx



$ExcelData = ConvertFrom-ExcelData C:\Users\LabAdmin\Desktop\Excel-Examples\testSQLGen.xlsx {
    param($propertyNames, $record)
    Class Person {
        [string]$First
        [string]$Last
        [string]$Zip
    }
    $NewPerson = [Person]::New()
    $reportRecord = @()
    foreach ($pn in $propertyNames) {
        if($pn -eq 'First'){ $NewPerson.First = $record.$pn }
        elseif($pn -eq 'Last') { $NewPerson.Last = $record.$pn }
        elseif($pn -eq 'The Zip') { $NewPerson.Zip = $record.$pn }
    }
    $NewPerson
}
$ExcelData
$Datatable = $ExcelData | ConvertTo-DbaDataTable
$datatable | Write-DbaDataTable -SqlServer localhost -Table dbaToolsDemo.dbo.People
