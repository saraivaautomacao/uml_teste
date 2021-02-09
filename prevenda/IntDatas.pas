unit IntDatas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, rxToolEdit;

type
  TformIntDatas = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Msglab: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FromEdit: TDateEdit;
    ToEdit: TDateEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
 private
    function GetFromDate: TDateTime;
    function GetToDate: TDateTime;
    procedure SetFromDate(NewDate: TDateTime);
    procedure SetToDate(NewDate: TDateTime);
  public
    property FromDate: TDateTime read GetFromDate write SetFromDate;
    property ToDate: TDateTime read GetToDate write SetToDate;
 end;

var
  formIntDatas: TformIntDatas;

implementation





{$R *.DFM}
procedure TformIntDatas.SetFromDate(NewDate: TDateTime);
begin
  FromEdit.Text := DateToStr(NewDate);
end;

procedure TformIntDatas.SetToDate(NewDate: TDateTime);
begin
  ToEdit.Text := DateToStr(NewDate);
end;

function TformIntDatas.GetFromDate: TDateTime;
begin
  if FromEdit.Text = '' then Result := 0
  else Result := StrToDate(FromEdit.Text);
end;

function TformIntDatas.GetToDate: TDateTime;
begin
  if ToEdit.Text = '' then Result := 0
  else Result := StrToDate(ToEdit.Text);
end;




procedure TformIntDatas.FormShow(Sender: TObject);
begin
 If formIntdatas.tag=0 Then
 Begin
  FromDate :=Date;
  ToDate := Now;
 End; 

end;

procedure TformIntDatas.BitBtn1Click(Sender: TObject);
begin
Try
    if (ToDate <> 0) and (ToDate < FromDate) then
    begin
      ShowMessage('"TO" date cannot be less than "FROM" date');
      ModalResult := mrNone;
    end
    else ModalResult := mrOk;
  except
    ShowMessage(' Data Inválida');
    ModalResult := mrNone;
  end;
end;

end.
