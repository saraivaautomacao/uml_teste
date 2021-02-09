unit tipocli1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Mask, DBCtrls, RXCtrls, RXDBCtrl, ExtCtrls, Db,
  Variants, ActnList, Enter, Grids, DBGrids, DosMove;

type
  TformTipoCli1 = class(TForm)
    Panel2: TPanel;
    DBStatusLabel2: TDBStatusLabel;
    Panel1: TPanel;
    Panel3: TPanel;
    dsTemp: TDataSource;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    MREnter1: TMREnter;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    sbtNovo: TSpeedButton;
    sbtGravar: TSpeedButton;
    sbtExcluir: TSpeedButton;
    sbtCancelar: TSpeedButton;
    sbtConsultar: TSpeedButton;
    sbtFechar: TSpeedButton;
    procedure dsTempDataChange(Sender: TObject; Field: TField);
    procedure sbtNovoClick(Sender: TObject);
    procedure sbtFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formTipoCli1: TformTipoCli1;

implementation

uses rotinas, Dados;
{$R *.DFM}

procedure TformTipoCli1.dsTempDataChange(Sender: TObject; Field: TField);
begin
  Verifica(dsTemp);
end;

procedure TformTipoCli1.sbtNovoClick(Sender: TObject);
begin
  Atualiza(dsTemp.DataSet, (Sender As TSpeedButton).Tag);

end;

procedure TformTipoCli1.sbtFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TformTipoCli1.FormShow(Sender: TObject);
begin
  Inicializa(sbtNovo, sbtGravar, sbtExcluir, sbtCancelar, sbtConsultar);
  dsTemp.Enabled := true;
  dmMod.tblClit.Open;
  dmMod.tblClit.IndexName := 'Ind_Tipo';
end;

procedure TformTipoCli1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaidaForm(dmMod.tblClit);
  dsTemp.Enabled := false;
end;

procedure TformTipoCli1.Action1Execute(Sender: TObject);
begin
  Atualiza(dsTemp.DataSet, (Sender As TAction).Tag);
end;

end.
