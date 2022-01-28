pageextension 50002 ExtendCustomerCard extends "Customer Card"
{
    layout
    {
        addafter("Prepayment %")
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
            field("Supporting Program"; Rec."Supporting Program")
            {
                ApplicationArea = All;
                Caption = 'Supporting Program';
            }
            field("Freight Prepaid Amount"; Rec."Freight Prepaid Amount")
            {
                ApplicationArea = All;
                Caption = 'Freight Prepaid Amount';
            }
            field("Pricing Multiplier"; Rec."Pricing Multiplier")
            {
                ApplicationArea = All;
                Caption = 'Pricing Multiplier';
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