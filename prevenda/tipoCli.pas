unit tipoCli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, ExtCtrls, Enter, DB;

type
  TFormTipoCli = class(TForm)
    rgOrdem: TRadioGroup;
    MREnter1: TMREnter;
    GroupBox1: TGroupBox;
    fldCpf: TMaskEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    fldCnpj: TMaskEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure rgOrdemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTipoCli: TFormTipoCli;
implementation
Uses Rotinas, Dados;

{$R *.DFM}

procedure TFormTipoCli.FormShow(Sender: TObject);
begin
   rgOrdem.ItemIndex:=0;
   groupBox1.Visible:=true;
   GroupBox2.visible:=false;
   fldCnpj.Text:='';
   fldcpf.Text:='';
   fldCpf.Setfocus;
end;

procedure TFormTipoCli.rgOrdemClick(Sender: TObject);
begin
   groupBox1.Visible:=rgOrdem.ItemIndex=0;
   groupBox2.Visible:=rgOrdem.ItemIndex=1;
end;

End.
