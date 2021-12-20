pageextension 50003 ExtendCustomerList extends "Customer List"
{
    layout
    {
        addafter("Payment Terms Code")
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
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}