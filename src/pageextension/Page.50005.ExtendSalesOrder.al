pageextension 50005 ExtendSalesOrder extends "Sales Order"
{
    layout
    {

        addafter("Payment Discount %")
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
        addbefore("VAT Bus. Posting Group")
        {
            field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
            {
                ApplicationArea = All;
                Caption = 'Gen. Bus. Posting Group';
            }
        }
    }

    actions
    {
        addafter("Print Confirmation")
        {
            action(BillofLading)
            {
                ApplicationArea = All;
                Caption = 'Bill of Lading';
                Image = Print;
                PromotedCategory = Category11;
                Promoted = true;
                trigger OnAction()
                begin
                    CurrPage.SetSelectionFilter(Rec);
                    Report.Run(50000, true, false, Rec);
                end;
            }

        }
    }

    var
        myInt: Integer;
}