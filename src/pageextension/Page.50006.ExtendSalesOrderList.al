pageextension 50006 ExttendSalesOrderList extends "Sales Order List"
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
        addafter(Dimensions)
        {
            action("Sales Order Detail Page")
            {
                ApplicationArea = All;
                Caption = 'Sales Order Detail Page';
                Image = OrderList;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Sales Order Detail Page";
            }
        }
    }

    var
        myInt: Integer;
}