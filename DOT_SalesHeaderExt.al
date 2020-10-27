tableextension 50130 DOT_SalesHeaderExt extends "Sales Header"
{
    fields
    {
        field(30001; "DOT_YourRef"; Code[20])
        {
            Caption = 'Your reference';
        }
        field(30002; "DOT_CommisionRate"; Decimal)
        {
            Caption = 'Commission rate %';
        }
        field(30003; "DOT_StartDate"; Date)
        {
            Caption = 'Start date';
        }
        field(30004; "DOT_EndDate"; Date)
        {
            Caption = 'End date';
        }
        field(30005; "DOT_InceptionDate"; Date)
        {
            Caption = 'Inception date';
        }
        field(30006; "DOT_Insurer"; Code[20])
        {
            Caption = 'Insurer';
        }
        field(30007; "DOT_Description"; BLOB)
        {
            Caption = 'Description';
        }
        field(30008; "DOT_InterestInsured"; BLOB)
        {
            Caption = 'Interest insured';
        }
        field(30009; "DOT_InsurerReference"; BLOB)
        {
            Caption = 'Insurer reference';
        }
        field(30010; "DOT_DimDepartment"; Code[20])
        {
            CaptionClass = '1,2,1';
            Caption = 'Department';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1),
                                                          Blocked = CONST(false));

            trigger OnValidate()
            begin
                ValidateShortcutDimCode(1, "DOT_DimDepartment");
            end;
        }
        field(30011; "DOT_DimTerritories"; Code[20])
        {
            CaptionClass = '1,2,2';
            Caption = 'Territories';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2),
                                                          Blocked = CONST(false));

            trigger OnValidate()
            begin
                ValidateShortcutDimCode(2, "DOT_DimTerritories");
            end;
        }
    }
}