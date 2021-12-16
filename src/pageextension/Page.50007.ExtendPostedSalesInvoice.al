pageextension 50007 ExtendPostedSalesInvoice extends "Posted Sales Invoice"
{
    layout
    {
        addbefore("Payment Discount %")
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