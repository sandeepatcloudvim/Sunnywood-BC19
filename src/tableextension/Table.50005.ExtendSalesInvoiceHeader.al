tableextension 50005 ExtendSalesInvoiceHeader extends "Sales Invoice Header"
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