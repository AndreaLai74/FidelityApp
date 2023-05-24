unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.StdCtrls, FMX.DateTimeCtrls, FMX.Controls.Presentation, System.StrUtils,
  FMX.Edit, FMX.DzHTMLText;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
    Layout4: TLayout;
    Rectangle1: TRectangle;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Rectangle2: TRectangle;
    Layout2: TLayout;
    Image2: TImage;
    Layout3: TLayout;
    Image1: TImage;
    Layout5: TLayout;
    Rectangle3: TRectangle;
    Label5: TLabel;
    RoundRect1: TRoundRect;
    Label6: TLabel;
    Label1: TLabel;
    idNome: TEdit;
    Label2: TLabel;
    idCognome: TEdit;
    Label3: TLabel;
    idEmail: TEdit;
    Label4: TLabel;
    idTel: TEdit;
    Label7: TLabel;
    FlowLayout1: TFlowLayout;
    CheckBox3: TCheckBox;
    DzHTMLText1: TDzHTMLText;
    FlowLayout2: TFlowLayout;
    CheckBox5: TCheckBox;
    DzHTMLText3: TDzHTMLText;
    Rectangle4: TRectangle;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    FlowLayout3: TFlowLayout;
    idGiorno: TEdit;
    idMese: TEdit;
    idAnno: TEdit;
    Label8: TLabel;
    idCAP: TEdit;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure idNomeClick(Sender: TObject);
    procedure idCognomeClick(Sender: TObject);
    procedure idEmailClick(Sender: TObject);
    procedure idTelClick(Sender: TObject);
    procedure idGiornoClick(Sender: TObject);
    procedure idMeseClick(Sender: TObject);
    procedure idAnnoClick(Sender: TObject);
    procedure idCAPClick(Sender: TObject);
  private
    { Private declarations }
    idF : Integer;
    procedure setFuoco;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  //* controllo oggetto ....
  if idF = 0 then
  begin
     idNome.Text := idNome.Text + (Sender as TButton).Text;
     idNome.SelStart := IdNome.SelLength;
  end
  else if idF = 1 then
  begin
     idCognome.Text := idCognome.Text + (Sender as TButton).Text;
     idCognome.SelStart := idCognome.SelLength;
  end
  else if idF = 2 then
  begin
     idEmail.Text := idEmail.Text + (Sender as TButton).Text;
     idEmail.SelStart := idEmail.SelLength;
  end
  else if idF = 3 then
  begin
     idTel.Text := idTel.Text + (Sender as TButton).Text;
     idTel.SelStart := idTel.SelLength;
  end
  else if idF = 4 then
  begin
     idGiorno.Text := idGiorno.Text + (Sender as TButton).Text;
     idGiorno.SelStart := idGiorno.SelLength;
  end
  else if idF = 5 then
  begin
     idMese.Text := idMese.Text + (Sender as TButton).Text;
     idMese.SelStart := idMese.SelLength;
  end
  else if idF = 6 then
  begin
     idAnno.Text := idAnno.Text + (Sender as TButton).Text;
     idAnno.SelStart := idAnno.SelLength;
  end
  else if idF = 7 then
  begin
     idCAP.Text := idCAP.Text + (Sender as TButton).Text;
     idCAP.SelStart := idCAP.SelLength;
  end;
end;

procedure TForm1.Button41Click(Sender: TObject);
begin
  if idF = 0 then
     idNome.Text := IdNome.Text + ' '
  else if idF = 1 then
     idCognome.Text := idCognome.Text + ' '
  else if idF = 2 then
     idEmail.Text := idEmail.Text + ' '
  else if idF = 3 then
     idTel.Text := idTel.Text + ' '
  else if idF = 4 then
     idGiorno.Text := idGiorno.Text + ' '
  else if idF = 5 then
     idMese.Text := idMese.Text + ' '
  else if idF = 6 then
     idAnno.Text := idAnno.Text + ' ' ;
end;

procedure TForm1.Button42Click(Sender: TObject);
begin
  inc(idF);
  if idF > 7 then idF := 0;

  if idF = 0 then
     idNome.SetFocus
  else if idF = 1 then
     idCognome.SetFocus
  else if idF = 2 then
     idEmail.SetFocus
  else if idF = 3 then
     idTel.SetFocus
  else if idF = 4 then
     idGiorno.SetFocus
  else if idF = 5 then
     idMese.SetFocus
  else if idF = 6 then
     idAnno.SetFocus
  else if idF = 7 then
     idCAP.SetFocus;
end;

procedure TForm1.Button43Click(Sender: TObject);
begin
  if idF = 0 then
  begin
     idNome.Text := LeftStr(IdNome.Text, IdNome.Text.Length-1);
     idNome.SelStart := idNome.SelLength;
  end
  else if idF = 1 then
  begin
     idCognome.Text := LeftStr(idCognome.Text, idCognome.Text.Length-1);
     idCognome.SelStart := idCognome.SelLength;
  end
  else if idF = 2 then
  begin
     idEmail.Text := LeftStr(idEmail.Text, idEmail.Text.Length-1);
     idEmail.SelStart := idEmail.SelLength;
  end
  else if idF = 3 then
  begin
     idTel.Text := LeftStr(idTel.Text, idTel.Text.Length-1);
     idTel.SelStart := idTel.SelLength;
  end
  else if idF = 4 then
  begin
     idGiorno.Text := LeftStr(idGiorno.Text, idGiorno.Text.Length-1);
     idGiorno.SelStart := idGiorno.SelLength;
  end
  else if idF = 5 then
  begin
     idMese.Text := LeftStr(idMese.Text, idMese.Text.Length-1);
     idMese.SelStart := idMese.SelLength;
  end
  else if idF = 6 then
  begin
     idAnno.Text := LeftStr(idAnno.Text, idAnno.Text.Length-1);
     idAnno.SelStart := idAnno.SelLength;
  end
  else if idF = 7 then
  begin
     idCAP.Text := LeftStr(idCAP.Text, idCAP.Text.Length-1);
     idCAP.SelStart := idCAP.SelLength;
  end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
   CheckBox2.IsChecked := CheckBox1.IsChecked;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
   CheckBox1.IsChecked := CheckBox2.IsChecked;
end;

procedure TForm1.idAnnoClick(Sender: TObject);
begin
  idF := 6;
end;

procedure TForm1.idCAPClick(Sender: TObject);
begin
  idF := 7;
end;

procedure TForm1.idCognomeClick(Sender: TObject);
begin
  idF := 1;
end;

procedure TForm1.idEmailClick(Sender: TObject);
begin
  idF := 2;
end;

procedure TForm1.idGiornoClick(Sender: TObject);
begin
   idF := 4;
end;

procedure TForm1.idMeseClick(Sender: TObject);
begin
  idF := 5;
end;

procedure TForm1.idNomeClick(Sender: TObject);
begin
  idF := 0;
end;

procedure TForm1.idTelClick(Sender: TObject);
begin
  idF := 3;
end;

procedure TForm1.setFuoco;
begin
  // controlliamo il focus ....
end;

end.
