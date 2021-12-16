tableextension 50001 ExtendCustomer extends Customer
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