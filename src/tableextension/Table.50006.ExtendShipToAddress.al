tableextension 50006 ExtendShiptoAddress extends "Ship-to Address"   //T=222
{
    fields
    {
        field(50001; "Commission Overwrite"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Commission Overwrite %';
            DecimalPlaces = 0 : 5;
        }
        field(50002; "Service Rep"; Code[20])
        {
            Caption = 'Service Rep';
            TableRelation = "Salesperson/Purchaser";
        }
        field(50003; "Record Creation Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Record Creation Date';
        }
        field(50004; "Salesperson Code"; Code[20])
        {
            Caption = 'Salesperson Code';
            TableRelation = "Salesperson/Purchaser";
        }
    }

    var
        myInt: Integer;
}