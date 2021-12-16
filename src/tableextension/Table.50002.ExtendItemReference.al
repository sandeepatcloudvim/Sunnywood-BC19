tableextension 50002 ExtendItemReference extends "Item Reference"
{
    fields
    {
        field(50000; "Commission Percentage"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Commission Percentage';
        }
    }

    var
        myInt: Integer;
}