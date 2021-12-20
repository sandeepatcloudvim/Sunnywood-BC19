tableextension 50001 ExtendCustomer extends Customer
{
    fields
    {
        field(50000; "Commission Percentage"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Commission Percentage';
            DecimalPlaces = 0 : 5;
        }
        field(50001; "Commission Overwrite"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Commission Overwrite %';
            DecimalPlaces = 0 : 5;
        }
    }

    var
        myInt: Integer;
}