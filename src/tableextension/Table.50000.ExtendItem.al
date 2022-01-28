tableextension 50000 ExtendItem extends Item
{
    fields
    {
        field(50000; "Commission Percentage"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Commission %';
            DecimalPlaces = 0 : 5;

        }
        field(50001; "Commission Overwrite"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Commission Overwrite %';
            DecimalPlaces = 0 : 5;

        }
        field(50002; "Record Creation Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Record Creation Date';
        }


    }

    var
        myInt: Integer;
}