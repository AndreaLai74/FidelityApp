unit frmCard;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls;

type
  TFormCard = class(TForm)
    Label2: TLabel;
    Button44: TButton;
    ImageViewer1: TImageViewer;
    Timer1: TTimer;
    procedure Button44Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCard: TFormCard;

implementation

{$R *.fmx}

procedure TFormCard.Button44Click(Sender: TObject);
begin
   ModalResult := mrOk;
end;

procedure TFormCard.Timer1Timer(Sender: TObject);
begin

   Timer1.Enabled := false;
   ModalResult := mrOk;

end;

end.

