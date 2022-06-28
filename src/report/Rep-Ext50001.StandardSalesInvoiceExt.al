reportextension 50001 "StandardSalesInvoice_Ext" extends "Standard Sales - Invoice"
{
    dataset
    {
        modify(Line)
        {
            trigger OnAfterAfterGetRecord()
            begin
                Unitpriceafterdiscount := 0;
                If "Unit Price" <> 0 then
                    Unitpriceafterdiscount := ("Unit Price" - (("Unit Price" / 100) * "Line Discount %"));
            end;
        }
        add(Line)
        {
            column(Unitpriceafterdiscount; Unitpriceafterdiscount)
            { }
        }

    }

    requestpage
    {
        // Add changes to the requestpage here
    }
    var
        Unitpriceafterdiscount: Decimal;
}