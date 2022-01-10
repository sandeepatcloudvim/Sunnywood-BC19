pageextension 50009 ExtendShipToAddress extends "Ship-to Address"
{
    layout
    {
        addafter("Tax Area Code")
        {
            field("Commission Overwrite"; Rec."Commission Overwrite")
            {
                ApplicationArea = All;
                Caption = 'Commission Overwrite %';
            }
            field("Service Rep"; Rec."Service Rep")
            {
                ApplicationArea = All;
                Caption = 'Service Rep';
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