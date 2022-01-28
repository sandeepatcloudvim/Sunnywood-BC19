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
            field("Commission Overwrite"; Rec."Commission Overwrite")
            {
                ApplicationArea = All;
                Caption = 'Commission Overwrite %';
            }
        }
        addafter("Salesperson Code")
        {
            field("Salesperson Code 2"; Rec."Salesperson Code 2")
            {
                ApplicationArea = All;
                Caption = 'Service Rep';
            }
        }
    }

    actions
    {
        addafter("&Invoice")
        {

            action("Sales Invoice Detail Page")
            {
                ApplicationArea = All;
                Caption = 'Sales Invoice Detail Page';
                Image = Invoice;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                RunObject = page "Sales Invoice Detail Page";
            }
        }
    }

    var
        myInt: Integer;
}