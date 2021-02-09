unit lkProdutos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, ComCtrls, Db, Variants,
 RxHook, Enter, RXDBCtrl, Buttons, RxLookup, DBCtrls, ZAbstractRODataset,
 ACBrBase, ACBrEnterTab, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormlkProd = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Edit1: TEdit;
    DataSource1: TDataSource;
    dbGrid1: TRxDBGrid;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Panel4: TPanel;
    rgTipo: TRadioGroup;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    ACBrEnterTab1: TACBrEnterTab;
    query1: TFDQuery;
    query1CODIGO: TWideStringField;
    query1PRODUTO: TWideStringField;
    query1UNIDADE: TWideStringField;
    query1PRECOVENDA: TFloatField;
    query1QUANT: TFloatField;
    query1LKLAB: TIntegerField;
    query1LKSETOR: TIntegerField;
    query1NAOSAITABELA: TWideStringField;
    query1ESTFISCAL: TFloatField;
    query1CTS: TWideStringField;
    query1CODIGOAUXLIAR: TWideStringField;
    query1SETOR: TWideStringField;
    query1LABORATORIO: TWideStringField;
    query1DESCONTO: TFloatField;
    query1SGF_DESCEXTRA: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure dbGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Exit(Sender: TObject);
    procedure fldGrupoClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Query1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormlkProd: TFormlkProd;
  ultimoReg:String='';
implementation

uses Dados,rotinas, dados1;
{$R *.DFM}

procedure TFormlkProd.FormShow(Sender: TObject);
begin
 // :=false;
  rgTipo.ItemIndex:=0;
  dmmod.tblSetor.Open;
  dmmod1.tblImp.Open;
  label2.Caption:='';
  Edit1.text:='';
  If tag=1 Then
     Edit1.Text:=geral;
  Edit1.SetFocus;
  Panel4.Caption:='';
   Edit1.OnExit:=edit1Exit;
End;

procedure TFormlkProd.PageControl1Change(Sender: TObject);
begin
  Edit1.TExt:='';
  Edit1.SetFocus;
 
end;

procedure TFormlkProd.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
  If Key=27 Then
  Begin
    edit1.OnExit:=Nil;
    Close;
  End;
  If (Key = VK_DOWN) or (Key=VK_UP) Then
      DbGrid1.SetFocus;
end;

procedure TFormlkProd.Button1Click(Sender: TObject);
begin
   Geral:=Query1Codigo.value;
   UltimoReg:=Geral;
end;

procedure TFormlkProd.Button2Click(Sender: TObject);
begin
   Geral:='';
end;

procedure TFormlkProd.dbGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


  If (Key=9) or (key=vk_return) Then
  Begin
     Button1Click(Sender);
     Close;
  End;
  If Key=27 Then
  Begin
     Close;
     geral:='';
  End;

end;

procedure TFormlkProd.Edit1Exit(Sender: TObject);
begin
  Query1.Close;
  Query1.sql.Clear;
  Query1.sql.text:='Select p.codigo,p.produto,p.unidade,p.precovenda,p.quant,p.estfiscal,p.cts,p.lklab,p.codigoauxliar,p.desconto,p.sgf_DescExtra,'+
  'p.lksetor, p.naosaitabela,gr.setor,lab.laboratorio from tabEst1  p '+
  'left join tabest8 gr '+
  'on p.lksetor=gr.controle '+
  'left join tablab  lab '+
  'on p.lklab=lab.controle '+
  'Where p.naosaitabela='+QuotedStr('N')+' and p.codigo<>'+QuotedStr('99999')+ ' and p.codigo<>'+QuotedStr('99998');
  If PageControl1.ActivePageIndex=0 Then
  Begin
     Query1.sql.add(' and p.produto like :comeco'); //and naosaitabela='+QuotedStr('N'));
     If rgTipo.itemindex=0 Then
       Query1.Params[0].asString:=Alltrim(edit1.text)+'%'
     Else If rgTipo.itemindex=1 Then
         Query1.Params[0].asString:='%'+Alltrim(edit1.text)+'%'
     Else
       Query1.Params[0].asString:='%'+Alltrim(edit1.text);
  End
  Else If PageControl1.ActivePageIndex=1 Then
  Begin
     Query1.sql.add(' and p.codigo=:comeco or p.codigoauxliar=:comeco');
     Edit1.Text:=GeraCod(edit1.text,5);
     Query1.Params[0].asString:=Alltrim(edit1.text);


  End;
  Query1.sql.add('order by p.produto');
  Query1.Open;
  If (Edit1.text<>'') And (Query1.isempty) Then
  Begin
      Query1.close;
      Query1.Params[0].asString:='%';
      Query1.Open;
      PesquisaAvancada(Query1,'Produto',Edit1.text);
      ultimoReg:='';
  End;
  DBGrid1.SelectedIndex := 1;
   If Ultimoreg<>'' Then
     Query1.Locate('codigo',ultimoReg,[]);
  dbGrid1.SetFocus;
end;

procedure TFormlkProd.fldGrupoClick(Sender: TObject);

begin
  ;
end;

procedure TFormlkProd.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
   Panel4.Caption:=FloatToStrf(Query1PrecoVenda.Value,ffCurrency,12,2);
end;

procedure TFormlkProd.Query1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept:=( (query1naosaitabela.value='N')
   and (query1codigo.value<>'99999')
   and (query1codigo.value<>'99998')
   and (query1codigo.value<>'00002')
   and (query1codigo.value<>'99997'));
end;

end.
