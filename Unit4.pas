unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.StrUtils,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm4 = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Button6: TButton;
    Button5: TButton;
    Button4: TButton;
    Button9: TButton;
    Button8: TButton;
    Button7: TButton;
    Button42: TButton;
    Button10: TButton;
    Button43: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    Button11: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    sPIN : String;
    sendTo : Integer;

    sendTo_Email : String;
    sendTo_SMS   : String;

    procedure GeneratePIN;
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

uses Unit3;

{ TForm4 }

procedure TForm4.Button11Click(Sender: TObject);
begin
   Timer2.Enabled := false;
   Timer1.Enabled := false;

   ModalResult := mrYes;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
   Edit1.Text := Edit1.Text + (Sender as TButton).Text;
   Edit1.SetFocus;
   Edit1.SelStart := Edit1.Text.Length;
end;

procedure TForm4.Button42Click(Sender: TObject);
begin
   //* Ok, confermiamo il pin ?

   if not sPIN.Trim.Equals(Edit1.Text.Trim) then
   begin

      var TF : TForm3 := TForm3.Create(Self);
      TF.Label2.Text := 'PIN Errato! Riprova!';
      TF.ShowModal;
      TF.Free;

      Edit1.SetFocus;
      Edit1.SelStart := Edit1.Text.Length;
      Exit;

   end;

   ModalResult := mrOk;

end;

procedure TForm4.Button43Click(Sender: TObject);
begin
   Edit1.Text := LeftStr(Edit1.Text, Length(Edit1.Text)-1);
   Edit1.SetFocus;
   Edit1.SelStart := Edit1.Text.Length;
end;

procedure TForm4.GeneratePIN;
begin
   //* Generiamo il PIN

   Randomize;
   var n1 : Integer := Random(10);
   Randomize;
   var n2 : Integer := Random(10);
   Randomize;
   var n3 : Integer := Random(10);
   Randomize;
   var n4 : Integer := Random(10);

   sPIN := n1.ToString + n2.ToString + n3.ToString + n4.ToString;

   Label3.Text := Label3.Text.Replace('@@SMS@@', IfThen(sendTo=0,'SMS','Email'));
end;

procedure TForm4.Timer1Timer(Sender: TObject);
begin
  //* Dopo 2 minuti ... bisogna uscire ....
  Timer1.Enabled := false;
  ModalResult := mrCancel;
end;

procedure TForm4.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := false;
  Button11.Visible := true;
end;

end.
