unit UPnPFRM1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UPnP;

type
  TUPnPFRM = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UPnPFRM: TUPnPFRM;
  UPnP: PortAcmak;
implementation

{$R *.dfm}

procedure TUPnPFRM.Button1Click(Sender: TObject);
begin
  UPnP := PortAcmak.Create;


  if not UPnP.Ekle(True, 1234, 1234, '95.15.16.239', 'TCP', 'DelphiCanDenemePortu')  then
  begin
    ShowMessage('Port açýlýrken hata oluþtu!');
  end
  else
  begin
    ShowMessage('Port baþarýyla açýldý!');
  end;

end;

end.
