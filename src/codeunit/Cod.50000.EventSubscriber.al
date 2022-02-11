codeunit 50000 ExtendEvents
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Page, Page::"Sales Order", 'OnValidateShipToOptionsOnAfterShipToAddressListGetRecord', '', true, true)]
    local procedure UpdateCustomValue(var ShipToAddress: Record "Ship-to Address"; var SalesHeader: Record "Sales Header")
    begin
        SalesHeader."Salesperson Code 2" := ShipToAddress."Service Rep";
        SalesHeader."Salesperson Code" := ShipToAddress."Salesperson Code";
        SalesHeader.Validate("Gen. Bus. Posting Group", ShipToAddress."Gen. Bus. Posting Group");
    end;
}