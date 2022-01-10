tableextension 50003 ExtendSalesHeader extends "Sales Header"
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
        field(50002; "Salesperson Code 2"; Code[20])
        {
            Caption = 'Service Rep';
            TableRelation = "Salesperson/Purchaser";
        }
    }

    var
        myInt: Integer;
}