pageextension 50101 "CDS ResourceListExt" extends "Resource List"
// CSD1.00 - 2018-01-01 - D. E. Veloper
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CDS Resource Type"; "CDS Resource Type")
            {

            }
            field("CDS Maximum Participants"; "CDS Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }

    trigger OnOpenPage()
    begin
        ShowType := (GetFilter("Type") = '');
        ShowMaxField := (GetFilter("Type") = format(Type::Machine));
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        ShowType: Boolean;
}