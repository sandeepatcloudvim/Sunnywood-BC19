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
    }

    var
        myInt: Integer;
}