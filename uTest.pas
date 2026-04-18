unit uTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  ShowMessage('Teste do delphi quanto a acentuação?');
end;
// teste no delphi Rio Atenção
procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  // Alteração via VSCode - Órgão - Você
  ShowMessage('ÓRgão - Você -  2 2 2 - Teste do delphi quanto a acentuação?');
end;

end.
