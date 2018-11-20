tableextension 50100 "CDS Resources Extension" extends Resource
{
    fields
    {
        modify("Type")
        {
            OptionCaption='Instructor,Room';
        }
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                TestField("Unit Cost");
   
            end;
        }
        field(50101; "CDS Resource Type"; Option)
        {
            Caption = 'Resourec Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(50102; "CDS Maximum Participants"; Decimal)
        {
            Caption = 'Maximum Participants';
        }
        field(50103; "CDS Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
        }
    }
    
    var
        myInt: Integer;
}