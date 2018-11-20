tableextension 50100 "CSD Resources Extension" extends Resource
{
    fields
    {
        modify("Type")
        {
            OptionCaption = 'Instructor,Room';
        }
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                TestField("Unit Cost");

            end;
        }
        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resourec Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(50102; "CSD Maximum Participants"; Decimal)
        {
            Caption = 'Maximum Participants';
        }
        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
        }
    }

    var
        myInt: Integer;
}