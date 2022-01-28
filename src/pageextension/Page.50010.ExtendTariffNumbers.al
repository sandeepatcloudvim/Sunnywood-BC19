pageextension 50010 ExtendTariffNumbers extends "Tariff Numbers"
{
    layout
    {
        addafter(Description)
        {
            field("Freight Class"; Rec."Freight Class")
            {
                ApplicationArea = All;
                Caption = 'Freight Class';
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