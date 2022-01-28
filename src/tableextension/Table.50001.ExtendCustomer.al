tableextension 50001 ExtendCustomer extends Customer
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
        field(50002; "Supporting Program"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Supporting Program';
        }
        field(50003; "Freight Prepaid Amount"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Freight Prepaid Amount';
            DecimalPlaces = 0 : 2;
        }
        field(50004; "Pricing Multiplier"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Pricing Multiplier';
        }
        field(50005; "Record Creation Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Record Creation Date';
        }
    }

    var
        myInt: Integer;
}