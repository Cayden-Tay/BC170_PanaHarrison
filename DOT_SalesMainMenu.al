pageextension 50140 DOT_SalesMainMenu extends "Order Processor Role Center"
{
    actions
    {
        addlast(Action76)
        {
            action("Contract")
            {
                Caption = 'Contract';
                ApplicationArea = All;
                Promoted = true;
                RunObject = Page DOT_Contract;
                ToolTip = 'Record your agreements with customers to sell certain products on certain delivery and payment terms. Contract, unlike sales invoices, allow you to ship partially, deliver directly from your vendor to your customer, initiate warehouse handling, and print various customer-facing documents. Sales invoicing is integrated in the sales order process.';
            }
        }
    }
}