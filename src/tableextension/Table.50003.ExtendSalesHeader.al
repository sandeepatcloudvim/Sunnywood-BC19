tableextension 50003 ExtendSalesHeader extends "Sales Header"
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