pageextension 50008 ExtendPostedSalesInvoices extends "Posted Sales Invoices"
{
    layout
    {
        addafter("Amount Including VAT")
        {
            field("Commission Percentage"; Rec."Commission Percentage")
            {
                ApplicationArea = All;
                Caption = 'Commission Percentage';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}