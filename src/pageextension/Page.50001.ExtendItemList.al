pageextension 50001 ExtendItemList extends "Item List"
{
    layout
    {
        addafter("Unit Price")
        {
            field("Commission Percentage"; Rec."Commission Percentage")
            {
                ApplicationArea = All;
                Caption = 'Commission %';
            }
            field("Record Creation Date"; Rec."Record Creation Date")
            {
                ApplicationArea = All;
                Caption = 'Record Creation Date';
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