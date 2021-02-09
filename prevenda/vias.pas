unit vias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls;

type
  TFormVias = class(TForm)
    Button1: TButton;
    Button2: TButton;
    rgRelat: TRadioGroup;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVias: TFormVias;

implementation


{$R *.DFM}

procedure TFormVias.FormShow(Sender: TObject);
begin

  button1.SetFocus;

end;

end.
