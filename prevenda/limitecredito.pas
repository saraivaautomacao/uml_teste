unit limitecredito;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, rxToolEdit, rxCurrEdit, ACBrBase, ACBrEnterTab;

type
  TFormLimCredito = class(TForm)
    Label1: TLabel;
    editRenda: TCurrencyEdit;
    editPercentual: TCurrencyEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    editLimite: TCurrencyEdit;
    Label3: TLabel;
    ACBrEnterTab1: TACBrEnterTab;
    procedure FormShow(Sender: TObject);
    procedure editPercentualExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLimCredito: TFormLimCredito;

implementation

{$R *.DFM}

procedure TFormLimCredito.editPercentualExit(Sender: TObject);
begin
  editLimite.value:= editrenda.value*(editPercentual.value/100);
end;

procedure TFormLimCredito.FormShow(Sender: TObject);
begin
 editRenda.setFocus;
end;

end.
