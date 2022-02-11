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
            field("Salesperson Code"; Rec."Salesperson Code")
            {
                ApplicationArea = All;
                Caption = 'Salesperson Code';
            }
            field("Record Creation Date"; Rec."Record Creation Date")
            {
                ApplicationArea = All;
                Caption = 'Record Creation Date';
            }
            field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
            {
                ApplicationArea = All;
                Caption = 'Gen. Bus. Posting Group';
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