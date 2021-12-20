tableextension 50002 ExtendItemReference extends "Item Reference"
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