pageextension 50004 ExtendItemReferenceList extends "Item Reference List"
{
    layout
    {
        addafter("Unit of Measure")
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