pageextension 50000 ExtendItemCard extends "Item Card"
{
    layout
    {
        addafter("Sales Blocked")
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