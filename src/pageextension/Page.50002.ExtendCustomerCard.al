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
            field("Creation Date"; DT2DATE(Rec.SystemCreatedAt))
            {
                ApplicationArea = All;
                Caption = 'Creation Date';
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