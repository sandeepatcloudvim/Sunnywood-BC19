tableextension 50007 ExtendTariffNumber extends "Tariff Number"
{
    fields
    {
        field(50000; "Freight Class"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Freight Class';
        }
    }

    var
        myInt: Integer;
}