report 50003 "Purchase Order CBR"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PurchaseOrderCBR.rdl';
    Caption = 'Purchase Order';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = SORTING("Document Type", "No.") WHERE("Document Type" = CONST(Order));
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Buy-from Vendor No.", "Pay-to Vendor No.", "No. Printed";
            column(No_PurchaseHeader; "No.")
            {
            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(CompanyAddress1; CompanyAddress[1])
                    {
                    }
                    column(CompanyAddress2; CompanyAddress[2])
                    {
                    }
                    column(CompanyAddress3; CompanyAddress[3])
                    {
                    }
                    column(CompanyAddress4; CompanyAddress[4])
                    {
                    }
                    column(CompanyAddress5; CompanyAddress[5])
                    {
                    }
                    column(CompanyAddress6; CompanyAddress[6])
                    {
                    }
                    column(CopyTxt; CopyTxt)
                    {
                    }
                    column(BuyFromAddress1; BuyFromAddress[1])
                    {
                    }
                    column(BuyFromAddress2; BuyFromAddress[2])
                    {
                    }
                    column(BuyFromAddress3; BuyFromAddress[3])
                    {
                    }
                    column(BuyFromAddress4; BuyFromAddress[4])
                    {
                    }
                    column(BuyFromAddress5; BuyFromAddress[5])
                    {
                    }
                    column(BuyFromAddress6; BuyFromAddress[6])
                    {
                    }
                    column(BuyFromAddress7; BuyFromAddress[7])
                    {
                    }
                    column(ExptRecptDt_PurchaseHeader; "Purchase Header"."Expected Receipt Date")
                    {
                    }
                    column(ShipToAddress1; ShipToAddress[1])
                    {
                    }
                    column(ShipToAddress2; ShipToAddress[2])
                    {
                    }
                    column(ShipToAddress3; ShipToAddress[3])
                    {
                    }
                    column(ShipToAddress4; ShipToAddress[4])
                    {
                    }
                    column(ShipToAddress5; ShipToAddress[5])
                    {
                    }
                    column(ShipToAddress6; ShipToAddress[6])
                    {
                    }
                    column(ShipToAddress7; ShipToAddress[7])
                    {
                    }
                    column(BuyfrVendNo_PurchaseHeader; "Purchase Header"."Buy-from Vendor No.")
                    {
                    }
                    column(YourRef_PurchaseHeader; "Purchase Header"."Your Reference")
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(No1_PurchaseHeader; "Purchase Header"."No.")
                    {
                    }
                    column(OrderDate_PurchaseHeader; "Purchase Header"."Order Date")
                    {
                    }
                    column(CompanyAddress7; CompanyAddress[7])
                    {
                    }
                    column(CompanyAddress8; CompanyAddress[8])
                    {
                    }
                    column(BuyFromAddress8; BuyFromAddress[8])
                    {
                    }
                    column(ShipToAddress8; ShipToAddress[8])
                    {
                    }
                    column(ShipmentMethodDescription; ShipmentMethod.Description)
                    {
                    }
                    column(PaymentTermsDescription; PaymentTerms.Description)
                    {
                    }
                    column(CompanyInformationPhoneNo; CompanyInformation."Phone No.")
                    {
                    }
                    column(CopyNo; CopyNo)
                    {
                    }
                    column(VendTaxIdentificationType; FORMAT(Vend."Tax Identification Type"))
                    {
                    }
                    column(ToCaption; ToCaptionLbl)
                    {
                    }
                    column(ReceiveByCaption; ReceiveByCaptionLbl)
                    {
                    }
                    column(VendorIDCaption; VendorIDCaptionLbl)
                    {
                    }
                    column(ConfirmToCaption; ConfirmToCaptionLbl)
                    {
                    }
                    column(BuyerCaption; BuyerCaptionLbl)
                    {
                    }
                    column(ShipCaption; ShipCaptionLbl)
                    {
                    }
                    column(ToCaption1; ToCaption1Lbl)
                    {
                    }
                    column(PurchOrderCaption; PurchOrderCaptionLbl)
                    {
                    }
                    column(PurchOrderNumCaption; PurchOrderNumCaptionLbl)
                    {
                    }
                    column(PurchOrderDateCaption; PurchOrderDateCaptionLbl)
                    {
                    }
                    column(PageCaption; PageCaptionLbl)
                    {
                    }
                    column(ShipViaCaption; ShipViaCaptionLbl)
                    {
                    }
                    column(TermsCaption; TermsCaptionLbl)
                    {
                    }
                    column(PhoneNoCaption; PhoneNoCaptionLbl)
                    {
                    }
                    column(TaxIdentTypeCaption; TaxIdentTypeCaptionLbl)
                    {
                    }
                    column(VendorOrderNo_Lbl; VendorOrderNoLbl)
                    {
                    }
                    column(VendorInvoiceNo_Lbl; VendorInvoiceNoLbl)
                    {
                    }
                    column(VendorOrderNo; "Purchase Header"."Vendor Order No.")
                    {
                    }
                    column(VendorInvoiceNo; "Purchase Header"."Vendor Invoice No.")
                    {
                    }
                    column(ShippingMethodCaption; ShippingMethodCaption)
                    {
                    }
                    column(Shipmentmethodcode; "Purchase Header"."Shipment Method Code")
                    {
                    }
                    column(ContractNumberCaption; ContractNumberCaption)
                    {
                    }
                    column(CSPRCaption; CSPRCaption)
                    {
                    }
                    column(ReferenceNumberCaption; ReferenceNumberCaption)
                    {
                    }
                    column(FOBCaption; FOBCaption)
                    {
                    }
                    column(ReqDateCaption; ReqDateCaption)
                    {
                    }
                    dataitem("Purchase Line"; "Purchase Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING("Document Type", "Document No.", "Line No.") WHERE("Document Type" = CONST(Order));
                        column(AmountExclInvDisc; AmountExclInvDisc)
                        {
                        }
                        column(ItemNumberToPrint; ItemNumberToPrint)
                        {
                        }
                        column(UnitofMeasure_PurchaseLine; "Unit of Measure")
                        {
                        }
                        column(Quantity_PurchaseLine; Quantity)
                        {
                        }
                        column(UnitPriceToPrint; UnitPriceToPrint)
                        {
                            DecimalPlaces = 2 : 5;
                        }
                        column(Description_PurchaseLine; Description)
                        {
                        }
                        column(PrintFooter; PrintFooter)
                        {
                        }
                        column(InvDiscountAmt_PurchaseLine; "Inv. Discount Amount")
                        {
                        }
                        column(TaxAmount; TaxAmount)
                        {
                        }
                        column(LineAmtTaxAmtInvDiscountAmt; "Line Amount" + TaxAmount - "Inv. Discount Amount")
                        {
                        }
                        column(TotalTaxLabel; TotalTaxLabel)
                        {
                        }
                        column(BreakdownTitle; BreakdownTitle)
                        {
                        }
                        column(BreakdownLabel1; BreakdownLabel[1])
                        {
                        }
                        column(BreakdownAmt1; BreakdownAmt[1])
                        {
                        }
                        column(BreakdownLabel2; BreakdownLabel[2])
                        {
                        }
                        column(BreakdownAmt2; BreakdownAmt[2])
                        {
                        }
                        column(BreakdownLabel3; BreakdownLabel[3])
                        {
                        }
                        column(BreakdownAmt3; BreakdownAmt[3])
                        {
                        }
                        column(BreakdownAmt4; BreakdownAmt[4])
                        {
                        }
                        column(BreakdownLabel4; BreakdownLabel[4])
                        {
                        }
                        column(DocumentNo_PurchaseLine; "Document No.")
                        {
                        }
                        column(ItemNoCaption; ItemNoCaptionLbl)
                        {
                        }
                        column(UnitCaption; UnitCaptionLbl)
                        {
                        }
                        column(DescriptionCaption; DescriptionCaptionLbl)
                        {
                        }
                        column(QuantityCaption; QuantityCaptionLbl)
                        {
                        }
                        column(UnitPriceCaption; UnitPriceCaptionLbl)
                        {
                        }
                        column(TotalPriceCaption; TotalPriceCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(InvDiscCaption; InvDiscCaptionLbl)
                        {
                        }
                        column(TotalCaption; TotalCaptionLbl)
                        {
                        }
                        column(AuthorizedSignCaption; AuthorizedSignCaption)
                        {
                        }
                        column(NoteCaption1; NoteCaption1)
                        {
                        }
                        column(NoteCaption2; NoteCaption2)
                        {
                        }
                        column(NoteCaption3; NoteCaption3)
                        {
                        }
                        column(NoteCaption4; NoteCaption4)
                        {
                        }
                        column(tradediscCaption; tradediscCaption)
                        {
                        }
                        column(Freightcaption; Freightcaption)
                        {
                        }
                        column(MiscCaption; MiscCaption)
                        {
                        }
                        column(taxCaption; taxCaption)
                        {
                        }
                        column(OrderTotalCaption; OrderTotalCaption)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            OnLineNumber := OnLineNumber + 1;

                            if ("Purchase Header"."Tax Area Code" <> '') and not UseExternalTaxEngine then
                                SalesTaxCalc.AddPurchLine("Purchase Line");

                            if "Vendor Item No." <> '' then
                                ItemNumberToPrint := "Vendor Item No."
                            else
                                ItemNumberToPrint := "No.";

                            if Type = 0 then begin
                                ItemNumberToPrint := '';
                                "Unit of Measure" := '';
                                "Line Amount" := 0;
                                "Inv. Discount Amount" := 0;
                                Quantity := 0;
                            end;

                            AmountExclInvDisc := "Line Amount";

                            if Quantity = 0 then
                                UnitPriceToPrint := 0 // so it won't print
                            else
                                UnitPriceToPrint := ROUND(AmountExclInvDisc / Quantity, 0.00001);

                            if OnLineNumber = NumberOfLines then begin
                                PrintFooter := true;

                                if "Purchase Header"."Tax Area Code" <> '' then begin
                                    if UseExternalTaxEngine then
                                        SalesTaxCalc.CallExternalTaxEngineForPurch("Purchase Header", true)
                                    else
                                        SalesTaxCalc.EndSalesTaxCalculation(UseDate);
                                    SalesTaxCalc.GetSummarizedSalesTaxTable(TempSalesTaxAmtLine);
                                    BrkIdx := 0;
                                    PrevPrintOrder := 0;
                                    PrevTaxPercent := 0;
                                    TaxAmount := 0;
                                    with TempSalesTaxAmtLine do begin
                                        RESET;
                                        SETCURRENTKEY("Print Order", "Tax Area Code for Key", "Tax Jurisdiction Code");
                                        if FIND('-') then
                                            repeat
                                                if ("Print Order" = 0) or
                                                   ("Print Order" <> PrevPrintOrder) or
                                                   ("Tax %" <> PrevTaxPercent)
                                                then begin
                                                    BrkIdx := BrkIdx + 1;
                                                    if BrkIdx > 1 then begin
                                                        if TaxArea."Country/Region" = TaxArea."Country/Region"::CA then
                                                            BreakdownTitle := Text006
                                                        else
                                                            BreakdownTitle := Text003;
                                                    end;
                                                    if BrkIdx > ARRAYLEN(BreakdownAmt) then begin
                                                        BrkIdx := BrkIdx - 1;
                                                        BreakdownLabel[BrkIdx] := Text004;
                                                    end else
                                                        BreakdownLabel[BrkIdx] := STRSUBSTNO("Print Description", "Tax %");
                                                end;
                                                BreakdownAmt[BrkIdx] := BreakdownAmt[BrkIdx] + "Tax Amount";
                                                TaxAmount := TaxAmount + "Tax Amount";
                                            until NEXT = 0;
                                    end;
                                    if BrkIdx = 1 then begin
                                        CLEAR(BreakdownLabel);
                                        CLEAR(BreakdownAmt);
                                    end;
                                end;
                            end;
                        end;

                        trigger OnPreDataItem();
                        begin
                            CurrReport.CREATETOTALS(AmountExclInvDisc, "Line Amount", "Inv. Discount Amount");
                            NumberOfLines := COUNT;
                            OnLineNumber := 0;
                            PrintFooter := false;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                begin
                    CurrReport.PAGENO := 1;
                    if CopyNo = NoLoops then begin
                        if not CurrReport.PREVIEW then
                            PurchasePrinted.RUN("Purchase Header");
                        CurrReport.BREAK;
                    end;
                    CopyNo := CopyNo + 1;
                    if CopyNo = 1 then // Original
                        CLEAR(CopyTxt)
                    else
                        CopyTxt := Text000;
                    TaxAmount := 0;

                    CLEAR(BreakdownTitle);
                    CLEAR(BreakdownLabel);
                    CLEAR(BreakdownAmt);
                    TotalTaxLabel := Text008;
                    if "Purchase Header"."Tax Area Code" <> '' then begin
                        TaxArea.GET("Purchase Header"."Tax Area Code");
                        case TaxArea."Country/Region" of
                            TaxArea."Country/Region"::US:
                                TotalTaxLabel := Text005;
                            TaxArea."Country/Region"::CA:
                                TotalTaxLabel := Text007;
                        end;
                        UseExternalTaxEngine := TaxArea."Use External Tax Engine";
                        SalesTaxCalc.StartSalesTaxCalculation;
                    end;
                end;

                trigger OnPreDataItem();
                begin
                    NoLoops := 1 + ABS(NoCopies);
                    if NoLoops <= 0 then
                        NoLoops := 1;
                    CopyNo := 0;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                if PrintCompany then
                    if RespCenter.GET("Responsibility Center") then begin
                        FormatAddress.RespCenter(CompanyAddress, RespCenter);
                        CompanyInformation."Phone No." := RespCenter."Phone No.";
                        CompanyInformation."Fax No." := RespCenter."Fax No.";
                    end;
                CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                if "Purchaser Code" = '' then
                    CLEAR(SalesPurchPerson)
                else
                    SalesPurchPerson.GET("Purchaser Code");

                if "Payment Terms Code" = '' then
                    CLEAR(PaymentTerms)
                else
                    PaymentTerms.GET("Payment Terms Code");

                if "Shipment Method Code" = '' then
                    CLEAR(ShipmentMethod)
                else
                    ShipmentMethod.GET("Shipment Method Code");

                FormatAddress.PurchHeaderBuyFrom(BuyFromAddress, "Purchase Header");
                FormatAddress.PurchHeaderShipTo(ShipToAddress, "Purchase Header");

                if not CurrReport.PREVIEW then begin
                    if ArchiveDocument then
                        ArchiveManagement.StorePurchDocument("Purchase Header", LogInteraction);

                    if LogInteraction then begin
                        CALCFIELDS("No. of Archived Versions");
                        SegManagement.LogDocument(
                          13, "No.", "Doc. No. Occurrence", "No. of Archived Versions", DATABASE::Vendor, "Buy-from Vendor No.",
                          "Purchaser Code", '', "Posting Description", '');
                    end;
                end;

                if "Posting Date" <> 0D then
                    UseDate := "Posting Date"
                else
                    UseDate := WORKDATE;
            end;

            trigger OnPreDataItem();
            begin
                if PrintCompany then
                    FormatAddress.Company(CompanyAddress, CompanyInformation)
                else
                    CLEAR(CompanyAddress);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                // group(Options)
                // {
                //     CaptionML = ENU = 'Options',
                //                 ESM = 'Opciones',
                //                 FRC = 'Options',
                //                 ENC = 'Options';
                //     field(NumberOfCopies; NoCopies)
                //     {
                //         CaptionML = ENU = 'Number of Copies',
                //                     ESM = 'Número de copias',
                //                     FRC = 'Nombre de copies',
                //                     ENC = 'Number of Copies';
                //     }
                //     field(PrintCompanyAddress; PrintCompany)
                //     {
                //         CaptionML = ENU = 'Print Company Address',
                //                     ESM = 'Imprimir dir. empresa',
                //                     FRC = 'Imprimer l''adresse de la compagnie',
                //                     ENC = 'Print Company Address';
                //     }
                //     field(ArchiveDocument; ArchiveDocument)
                //     {
                //         CaptionML = ENU = 'Archive Document',
                //                     ESM = 'Archivar documento',
                //                     FRC = 'Archiver document',
                //                     ENC = 'Archive Document';
                //         Enabled = ArchiveDocumentEnable;

                //         trigger OnValidate();
                //         begin
                //             if not ArchiveDocument then
                //                 LogInteraction := false;
                //         end;
                //     }
                //     field(LogInteraction; LogInteraction)
                //     {
                //         CaptionML = ENU = 'Log Interaction',
                //                     ESM = 'Log interacción',
                //                     FRC = 'Journal interaction',
                //                     ENC = 'Log Interaction';
                //         Enabled = LogInteractionEnable;

                //         trigger OnValidate();
                //         begin
                //             if LogInteraction then
                //                 ArchiveDocument := ArchiveDocumentEnable;
                //         end;
                //     }
                //}
            }
        }

        actions
        {
        }

        trigger OnInit();
        begin
            LogInteractionEnable := true;
            ArchiveDocumentEnable := true;
        end;

        trigger OnOpenPage();
        begin
            ArchiveDocument := ArchiveManagement.PurchaseDocArchiveGranule;
            LogInteraction := SegManagement.FindInteractTmplCode(13) <> '';

            ArchiveDocumentEnable := ArchiveDocument;
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnPreReport();
    begin
        CompanyInformation.GET('');
    end;

    var
        UnitPriceToPrint: Decimal;
        AmountExclInvDisc: Decimal;
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInformation: Record "Company Information";
        RespCenter: Record "Responsibility Center";
        Language: codeunit Language;
        TempSalesTaxAmtLine: Record "Sales Tax Amount Line" temporary;
        TaxArea: Record "Tax Area";
        Vend: Record Vendor;
        CompanyAddress: array[8] of Text[50];
        BuyFromAddress: array[8] of Text[50];
        ShipToAddress: array[8] of Text[50];
        CopyTxt: Text[10];
        ItemNumberToPrint: Text[20];
        PrintCompany: Boolean;
        PrintFooter: Boolean;
        NoCopies: Integer;
        NoLoops: Integer;
        CopyNo: Integer;
        NumberOfLines: Integer;
        OnLineNumber: Integer;
        PurchasePrinted: Codeunit "Purch.Header-Printed";
        FormatAddress: Codeunit "Format Address";
        SalesTaxCalc: Codeunit "Sales Tax Calculate";
        ArchiveManagement: Codeunit ArchiveManagement;
        SegManagement: Codeunit SegManagement;
        ArchiveDocument: Boolean;
        LogInteraction: Boolean;
        TaxAmount: Decimal;
        TotalTaxLabel: Text[30];
        BreakdownTitle: Text[30];
        BreakdownLabel: array[4] of Text[30];
        BreakdownAmt: array[4] of Decimal;
        BrkIdx: Integer;
        PrevPrintOrder: Integer;
        PrevTaxPercent: Decimal;
        UseDate: Date;
        Text000: TextConst ENU = 'COPY', ESM = 'COPIA', FRC = 'COPIER', ENC = 'COPY';
        Text003: TextConst ENU = 'Sales Tax Breakdown:', ESM = 'Análisis impto. vtas.:', FRC = 'Ventilation taxe de vente :', ENC = 'Sales Tax Breakdown:';
        Text004: TextConst ENU = 'Other Taxes', ESM = 'Otros impuestos', FRC = 'Autres taxes', ENC = 'Other Taxes';
        Text005: TextConst ENU = 'Total Sales Tax:', ESM = 'Total impto. vtas.:', FRC = 'Taxes de vente totales:', ENC = 'Total Sales Tax:';
        Text006: TextConst ENU = 'Tax Breakdown:', ESM = 'Desglose imptos.:', FRC = 'Ventilation fiscale :', ENC = 'Tax Breakdown:';
        Text007: TextConst ENU = 'Total Tax:', ESM = 'Total impto.:', FRC = 'Taxe totale :', ENC = 'Total Tax:';
        Text008: TextConst ENU = 'Tax:', ESM = 'Impto.:', FRC = 'Taxe :', ENC = 'Tax:';
        UseExternalTaxEngine: Boolean;
        [InDataSet]
        ArchiveDocumentEnable: Boolean;
        [InDataSet]
        LogInteractionEnable: Boolean;
        ToCaptionLbl: TextConst ENU = 'Vendor:', ESM = 'Para:', FRC = '‡ :', ENC = 'Vendor:';
        ReceiveByCaptionLbl: TextConst ENU = 'Receive By', ESM = 'Recibir por', FRC = 'Recevoir par', ENC = 'Receive By';
        VendorIDCaptionLbl: TextConst ENU = 'Vendor ID', ESM = 'Id. proveedor', FRC = 'Code de fournisseur', ENC = 'Vendor ID';
        ConfirmToCaptionLbl: TextConst ENU = 'Confirm With', ESM = 'Confirmar a', FRC = 'Confirmer à', ENC = 'Confirm With';
        BuyerCaptionLbl: TextConst ENU = 'Buyer', ESM = 'Comprador', FRC = 'Acheteur', ENC = 'Buyer';
        ShipCaptionLbl: TextConst ENU = 'Ship', ESM = 'Enviar', FRC = 'Livrer', ENC = 'Ship';
        ToCaption1Lbl: TextConst ENU = 'To:', ESM = 'Para:', FRC = '‡ :', ENC = 'To:';
        PurchOrderCaptionLbl: TextConst ENU = 'PURCHASE ORDER', ESM = 'PEDIDO COMPRA', FRC = 'BON DE COMMANDE', ENC = 'PURCHASE ORDER';
        PurchOrderNumCaptionLbl: TextConst ENU = 'Purchase Order No.', ESM = 'Número pedido compra:', FRC = 'Numéro de bon de commande :', ENC = 'Purchase Order No.';
        PurchOrderDateCaptionLbl: TextConst ENU = 'Date', ESM = 'Fecha pedido compra:', FRC = 'Date du bon de commande :', ENC = 'Date';
        PageCaptionLbl: TextConst ENU = 'Page:', ESM = 'Pág.:', FRC = 'Page :', ENC = 'Page:';
        ShipViaCaptionLbl: TextConst ENU = 'Ship Via', ESM = 'Envío a través de', FRC = 'Livrer par', ENC = 'Ship Via';
        TermsCaptionLbl: TextConst ENU = 'Payment Terms', ESM = 'Términos', FRC = 'Modalités', ENC = 'Payment Terms';
        PhoneNoCaptionLbl: TextConst ENU = 'Phone No.', ESM = 'Nº teléfono', FRC = 'N° téléphone', ENC = 'Phone No.';
        TaxIdentTypeCaptionLbl: TextConst ENU = 'Tax Ident. Type', ESM = 'Tipo de identificación fiscal', FRC = 'Type ident. taxe', ENC = 'Tax Ident. Type';
        ItemNoCaptionLbl: TextConst ENU = 'L/N Item Number', ESM = 'Nº producto', FRC = 'N° d''article', ENC = 'L/N Item Number';
        UnitCaptionLbl: TextConst ENU = 'U/M', ESM = 'Unidad', FRC = 'Unité', ENC = 'Unit';
        DescriptionCaptionLbl: TextConst ENU = 'Description', ESM = 'Descripción', FRC = 'Description', ENC = 'Description';
        QuantityCaptionLbl: TextConst ENU = 'Ordered', ESM = 'Cantidad', FRC = 'Quantité', ENC = 'Ordered';
        UnitPriceCaptionLbl: TextConst ENU = 'Unit Price', ESM = 'Precio unitario', FRC = 'Prix unitaire', ENC = 'Unit Price';
        TotalPriceCaptionLbl: TextConst ENU = 'Ext.Price', ESM = 'Precio total', FRC = 'Prix total', ENC = 'Ext.Price';
        SubtotalCaptionLbl: TextConst ENU = 'Subtotal:', ESM = 'Subtotal:', FRC = 'Sous-total :', ENC = 'Subtotal:';
        InvDiscCaptionLbl: TextConst ENU = 'Invoice Discount:', ESM = 'Descuento factura:', FRC = 'Escompte de la facture :', ENC = 'Invoice Discount:';
        TotalCaptionLbl: TextConst ENU = 'Total:', ESM = 'Total:', FRC = 'Total :', ENC = 'Total:';
        VendorOrderNoLbl: TextConst ENU = 'Vendor Order No.', ESM = 'Nº. de pedido de proveedor', FRC = 'N° commande fournisseur', ENC = 'Vendor Order No.';
        VendorInvoiceNoLbl: TextConst ENU = 'Vendor Invoice No.', ESM = 'Nº. de factura de proveedor', FRC = 'N° facture fournisseur', ENC = 'Vendor Invoice No.';
        ShippingMethodCaption: Label 'Shipping Method';
        ContractNumberCaption: Label 'Contract Number';
        CSPRCaption: Label 'Changed Since the Previous Revision';
        ReferenceNumberCaption: Label 'Reference Number';
        FOBCaption: Label 'FOB';
        ReqDateCaption: Label 'Req.Date';
        AuthorizedSignCaption: Label 'Authorized Signature';
        NoteCaption1: Label 'Notes:All products containing Composite Wood';
        NoteCaption2: Label 'Products (Particleboard,MDF and Hardwood Plywood)';
        NoteCaption3: Label 'must confirm with US EPA TSCA Title VI regulation';
        NoteCaption4: Label 'and labeled on the goods and cartons as well.';
        tradediscCaption: Label 'Trade Discount';
        Freightcaption: Label 'Freight';
        MiscCaption: Label 'Miscellaneous';
        taxCaption: Label 'Tax';
        OrderTotalCaption: Label 'Order Total';
}

