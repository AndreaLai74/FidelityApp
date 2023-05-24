unit UnitA;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TFormA = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button44: TButton;
    Button1: TButton;
    procedure Button44Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormA: TFormA;

implementation

{$R *.fmx}

procedure TFormA.Button1Click(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TFormA.Button44Click(Sender: TObject);
begin
   ModalResult := mrOk;
end;

end.

