tableextension 50000 ExtendItem extends Item
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