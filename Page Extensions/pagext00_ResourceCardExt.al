pageextension 50100 "CDS ResourceCardExt" extends "Resource Card"
// CSD1.00 - 2018-02-01 - D. E. Veloper
{
    layout
    {
        addlast(General)
        {
            field("CDS Resource Type"; "CDS Resource Type")
            {

            }

            field("CDS Quantity Per Day"; "CDS Quantity Per Day")
            {

            }

        }

        addafter("Personal Data")
        {
            group("CDS Room")
            {
                Caption = 'Room';
                Visible = ShowMaxField;
                field("CDS Maximum Participants"; "CDS Maximum Participants")
                {

                }
            }
        }
    }


    actions
    {
        // Add changes to page actions here
    }
    trigger OnAfterGetRecord()
    begin
        ShowMaxField := (Type = type::Machine);
        CurrPage.Update(false);

    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}