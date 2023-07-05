unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.StrUtils, System.DateUtils, System.JSON, System.IOUtils, System.IniFiles,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.DzHTMLText,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Client,
  REST.Authenticator.Basic, REST.Types, REST.Authenticator.OAuth,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  FMX.frxClass, FMX.ExtCtrls, FMX.TabControl;

type
  TForm2 = class(TForm)
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout2: TLayout;
    Image2: TImage;
    Layout3: TLayout;
    Image1: TImage;
    Layout4: TLayout;
    Layout5: TLayout;
    Rectangle3: TRectangle;
    Label5: TLabel;
    Timer1: TTimer;
    HTTPBasicAuthenticator1: THTTPBasicAuthenticator;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    OAuth2Authenticator1: TOAuth2Authenticator;
    NetHTTPClient1: TNetHTTPClient;
    frxReport1: TfrxReport;
    Timer3: TTimer;
    Timer2: TTimer;
    Image3: TImage;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    Layout6: TLayout;
    RoundRect1: TRoundRect;
    Label6: TLabel;
    RoundRect2: TRoundRect;
    Label1: TLabel;
    TabItem2: TTabItem;
    Layout7: TLayout;
    Rectangle1: TRectangle;
    GridLayout1: TGridLayout;
    Layout8: TLayout;
    Label2: TLabel;
    idNome: TEdit;
    Layout9: TLayout;
    Label3: TLabel;
    idCognome: TEdit;
    GridLayout2: TGridLayout;
    Layout10: TLayout;
    Label4: TLabel;
    idTel: TEdit;
    Layout11: TLayout;
    idCAP: TEdit;
    Label8: TLabel;
    idEmail: TEdit;
    Label7: TLabel;
    Label9: TLabel;
    FlowLayout3: TFlowLayout;
    idGiorno: TEdit;
    idMese: TEdit;
    idAnno: TEdit;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
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
    Button44: TButton;
    Button45: TButton;
    RoundRect3: TRoundRect;
    Label10: TLabel;
    TabItem3: TTabItem;
    Layout12: TLayout;
    Rectangle5: TRectangle;
    IdEmail_R: TEdit;
    Label15: TLabel;
    Rectangle6: TRectangle;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    Button49: TButton;
    Button50: TButton;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    Button54: TButton;
    Button55: TButton;
    Button56: TButton;
    Button57: TButton;
    Button58: TButton;
    Button59: TButton;
    Button60: TButton;
    Button61: TButton;
    Button62: TButton;
    Button63: TButton;
    Button64: TButton;
    Button65: TButton;
    Button66: TButton;
    Button67: TButton;
    Button68: TButton;
    Button69: TButton;
    Button70: TButton;
    Button71: TButton;
    Button72: TButton;
    Button73: TButton;
    Button74: TButton;
    Button75: TButton;
    Button76: TButton;
    Button77: TButton;
    Button78: TButton;
    Button79: TButton;
    Button80: TButton;
    Button81: TButton;
    Button82: TButton;
    Button83: TButton;
    Button84: TButton;
    Button85: TButton;
    Button86: TButton;
    Button87: TButton;
    Button88: TButton;
    Button89: TButton;
    Button90: TButton;
    RoundRect4: TRoundRect;
    Label17: TLabel;
    idTel_R: TEdit;
    Label13: TLabel;
    TabItem4: TTabItem;
    Layout13: TLayout;
    Label11: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure idNomeClick(Sender: TObject);
    procedure idCognomeClick(Sender: TObject);
    procedure idEmailClick(Sender: TObject);
    procedure idTelClick(Sender: TObject);
    procedure idCAPClick(Sender: TObject);
    procedure idGiornoClick(Sender: TObject);
    procedure idMeseClick(Sender: TObject);
    procedure idAnnoClick(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure frxReport1PrintReport(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure IdEmail_RClick(Sender: TObject);
    procedure idTel_RClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }

    NomeDellaCarta : String;
    NomeDellaCarta_ToPrint : String;

    EndPointURL : String;
    StoreCoded  : String;
    ReportCard  : String;

    TimeOut  : Integer;
    FullMode : String;


    TipoOperazione : Integer;

    idCODE : Integer;
    CodCARTA : String;

    sPrinter : String;

    procedure LOAD_CONFIG;

    procedure sendSMSOrEmail(codPIN : String; Tipo : Integer);
    procedure GenerateCARD;
    procedure CheckCARD;

  public
    { Public declarations }
    idF   : Integer;
    idF_R : Integer;


    procedure setFuoco;
    procedure setFuoco_R;

  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses Unit3, Unit4, frmCard, UnitA;

procedure TForm2.Button1Click(Sender: TObject);
begin
  //* controllo oggetto ....

  Timer1.Enabled := false;
  Timer1.Enabled := true;


  if TipoOperazione = 0 then
  begin

          if idF = 0 then
          begin
             idNome.Text := idNome.Text + (Sender as TButton).Text;
          end
          else if idF = 1 then
          begin
             idCognome.Text := idCognome.Text + (Sender as TButton).Text;
          end
          else if idF = 2 then
          begin
             idEmail.Text := (idEmail.Text + (Sender as TButton).Text).ToLower;
          end
          else if idF = 3 then
          begin
             var sx : String := Trim((Sender as TButton).Text);

             if sx.Length > 0 then
             begin
                var sch : Char := sx[1];
                if sch in ['0'..'9'] then
                   idTel.Text := idTel.Text + sch;
             end;
          end
          else if idF = 4 then
          begin
             var sx : String := Trim((Sender as TButton).Text);

             if sx.Length > 0 then
             begin
                var sch : Char := sx[1];
                if sch in ['0'..'9'] then
                begin
                   if idCAP.Text.Trim.Length < 5 then
                      idCAP.Text := idCAP.Text + (Sender as TButton).Text;
                end;
             end;
          end
          else if idF = 5 then
          begin
             var sx : String := Trim((Sender as TButton).Text);

             if sx.Length > 0 then
             begin
                var sch : Char := sx[1];
                if sch in ['0'..'9'] then
                begin
                   if idGiorno.Text.Trim.Length < 2 then
                       idGiorno.Text := idGiorno.Text + (Sender as TButton).Text;
                end;
             end;
          end
          else if idF = 6 then
          begin
             var sx : String := Trim((Sender as TButton).Text);

             if sx.Length > 0 then
             begin
                var sch : Char := sx[1];
                if sch in ['0'..'9'] then
                begin
                   if idMese.Text.Trim.Length < 2 then
                       idMese.Text := idMese.Text + (Sender as TButton).Text;
                end;
             end;
          end
          else if idF = 7 then
          begin
             var sx : String := Trim((Sender as TButton).Text);

             if sx.Length > 0 then
             begin
                var sch : Char := sx[1];
                if sch in ['0'..'9'] then
                   if idAnno.Text.Trim.Length < 4 then
                       idAnno.Text := idAnno.Text + (Sender as TButton).Text;
             end;
          end;

          setFuoco;
  end
  else
  begin

          if idF_R = 0 then
          begin
             idEmail_R.Text := (idEmail_R.Text + (Sender as TButton).Text).ToLower;
          end
          else if idF_R = 1 then
          begin
             var sx : String := Trim((Sender as TButton).Text);

             if sx.Length > 0 then
             begin
                var sch : Char := sx[1];
                if sch in ['0'..'9'] then
                   idTel_R.Text := idTel_R.Text + sch;
             end;
          end;

          setFuoco_R;

  end;
end;

procedure TForm2.Button41Click(Sender: TObject);
begin

  if TipoOperazione = 0 then
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
           idCAP.Text := idCAP.Text + ' '
        else if idF = 5 then
           idGiorno.Text := idGiorno.Text + ' '
        else if idF = 6 then
           idMese.Text := idMese.Text + ' '
        else if idF = 7 then
           idAnno.Text := idAnno.Text + ' ' ;

  end
  else
  begin

        if idF_R = 0 then
           idEmail_R.Text := idEmail_R.Text + ' '
        else if idF_R = 1 then
           idTel_R.Text := idTel_R.Text + ' ';

  end;
end;

procedure TForm2.Button42Click(Sender: TObject);
begin

  if TipoOperazione = 0 then
  begin
      inc(idF);
      if idF > 7 then idF := 0;

      if idF = 0 then
         idNome.SetFocus
      else if idF = 1 then
         idCognome.SetFocus
      else if idF = 2 then
      begin
         idEmail.SetFocus;

         if idEMail.ReadOnly = true then
         begin
            idF := 3;
            idTel.SetFocus;
         end;
      end
      else if idF = 3 then
         idTel.SetFocus
      else if idF = 4 then
         idCAP.SetFocus
      else if idF = 5 then
         idGiorno.SetFocus
      else if idF = 6 then
         idMese.SetFocus
      else if idF = 7 then
         idAnno.SetFocus;
  end
  else
  begin

      inc(idF_R);
      if idF_R > 1 then idF_R := 0;

      if idF_R = 0 then
         idEmail_R.SetFocus
      else if idF_R = 1 then
         idTel_R.SetFocus;

  end;
end;

procedure TForm2.Button43Click(Sender: TObject);
begin

  if TipoOperazione = 0 then
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
         idCAP.Text := LeftStr(idCAP.Text, idCAP.Text.Length-1);
         idCAP.SelStart := idCAP.SelLength;
      end
      else if idF = 5 then
      begin
         idGiorno.Text := LeftStr(idGiorno.Text, idGiorno.Text.Length-1);
         idGiorno.SelStart := idGiorno.SelLength;
      end
      else if idF = 6 then
      begin
         idMese.Text := LeftStr(idMese.Text, idMese.Text.Length-1);
         idMese.SelStart := idMese.SelLength;
      end
      else if idF = 7 then
      begin
         idAnno.Text := LeftStr(idAnno.Text, idAnno.Text.Length-1);
         idAnno.SelStart := idAnno.SelLength;
      end;

  end
  else
  begin

      if idF_R = 0 then
      begin
         idEmail_R.Text := LeftStr(idEmail_R.Text, idEmail_R.Text.Length-1);
         idEmail_R.SelStart := idEmail_R.SelLength;
      end
      else if idF_R = 1 then
      begin
         idTel_R.Text := LeftStr(idTel_R.Text, idTel_R.Text.Length-1);
         idTel_R.SelStart := idTel_R.SelLength;
      end;

  end;

end;

procedure TForm2.Button44Click(Sender: TObject);
begin
  //* Facciamo il check dei campi ....

  var sx : String := '';
  var sy : String := '';

  if TipoOperazione = 0 then
  begin

      if not(CheckBox3.IsChecked) then
      begin
          var TF : TForm3 := TForm3.Create(nil);
          TF.Label2.Text := 'Non hai accettato i termini e condizioni ' +
                            'di servizio!';
          TF.ShowModal;
          TF.Free;

          idF := 0;
          setFuoco;
          Exit;
      end;

      sx := idNome.Text.Trim;

      if (sx.Length < 3) then
      begin
          var TF : TForm3 := TForm3.Create(nil);
          TF.Label2.Text := 'Il campo "Nome" non è valido!';
          TF.ShowModal;
          TF.Free;

          idF := 0;
          setFuoco;
          Exit;
      end;


      sx := idCognome.Text.Trim;

      if (sx.Length < 3) then
      begin
          var TF : TForm3 := TForm3.Create(nil);
          TF.Label2.Text := 'Il campo "Cognome" non è valido!';
          TF.ShowModal;
          TF.Free;

          idF := 1;
          setFuoco;
          Exit;
      end;

      sx := idCAP.Text.Trim;

      if (sx.Length < 5) then
      begin
          var TF : TForm3 := TForm3.Create(nil);
          TF.Label2.Text := 'Il campo "CAP" non è valido!';
          TF.ShowModal;
          TF.Free;

          idF := 4;
          setFuoco;
          Exit;
      end;
  end;

  sx := IfThen(TipoOperazione = 0, idEmail.Text.Trim, idEMail_R.Text.Trim);
  sy := IfThen(TipoOperazione = 0, idTel.Text.Trim, idTel_R.Text.Trim);

  if (sx.Length < 5) and (sy.Length < 9) then
  begin
      var TF : TForm3 := TForm3.Create(nil);
      TF.Label2.Text := 'Inserire almeno una "Email" o "Telefono" !';
      TF.ShowModal;
      TF.Free;

      if TipoOperazione = 0 then
      begin
         idF := 2;
         setFuoco;
      end
      else
      begin
         idF_R := 0;
         setFuoco_R;
      end;

      Exit;
  end;


  //* Facciamo il check dell'indirizzo EMAIL ....
  if sx.Trim <> '' then
  begin
      if (Pos('@', sx) <= 0) or (Pos('.', sx) <= 0)  then
      begin
          var TF : TForm3 := TForm3.Create(nil);
          TF.Label2.Text := 'Inserire una "Email" valida !';
          TF.ShowModal;
          TF.Free;

          if TipoOperazione = 0 then
          begin
             idF := 2;
             setFuoco;
          end
          else
          begin
             idF_R := 0;
             setFuoco_R;
          end;

          Exit;
      end;
  end;

  //* Facciamo il check del numero di telefono inserito ....
  if not(sy.StartsWith('+')) and not(sy.Trim.Equals('')) then
  begin
//      var TF : TForm3 := TForm3.Create(nil);
//      TF.Label2.Text := 'Inserire il numero di telefono' + sLineBreak +
//                        'comprensivo del prefisso internazionale. ' + sLineBreak +
//                        'Esempio: per l''italia inserire +39 ';
//      TF.ShowModal;
//      TF.Free;

//      idF := 3;
//      setFuoco;
//      Exit;

      if TipoOperazione = 0 then idTel.Text := '+39' + idTel.Text.Trim
                            else idTel_R.Text := '+39' + idTel_R.Text.Trim
  end;

  if TipoOperazione = 0 then
  begin
      var Data : TDateTime;
      var Ok   : Boolean := false;

      try
         Data := EncodeDate(StrToIntDef(idAnno.Text, Date.GetYear), StrToIntDef(idMese.Text, Date.GetMonth), StrToIntDef(idGiorno.Text, Date.GetDay));
         Ok   := true;
      except
        On E: Exception do
        begin

        end;
      end;

      //* Facciamo il check dell'indirizzo EMAIL ....
      if not(OK) then
      begin
          var TF : TForm3 := TForm3.Create(nil);
          TF.Label2.Text := 'Inserire una "Data di Nascita" valida !';
          TF.ShowModal;
          TF.Free;

          idF := 5;
          setFuoco;
          Exit;
      end;

      //* Verifichiamo l'eta ....
      var nG : Integer := Date.YearsBetween(Data);
      if (nG < 18) OR (nG > 99)  then
      begin
          var TF : TForm3 := TForm3.Create(nil);
          TF.Label2.Text := 'Inserire una "Data di Nascita" valida !';
          TF.ShowModal;
          TF.Free;

          idF := 5;
          setFuoco;
          Exit;
      end;

  end;

  Timer1.Enabled := false;

  if TipoOperazione = 0 then
  begin
        //* Registro la nuova card ... oppure la aggiorno .... (SERVE UN FLAG PER SAPERE SE LA HO STAMPATA) ....
        if not(CheckBox3.IsChecked) then CheckBox3.IsChecked := true;

        var TF : TForm4 := TForm4.Create(Self);

        var bRip : boolean := true;
        var sRisp : Integer := mrCancel;

        while bRip do
        begin
            TF.sendTo := 1;
            if not idTel.Text.Trim.Equals('') then TF.sendTo := 0;

            Tf.sendTo_Email := idEmail.Text.Trim;
            TF.sendTo_SMS   := idTel.Text.Trim;

            TF.Timer2.Enabled := false;
            TF.Button11.Visible := false;
            TF.Timer2.Enabled := true;

            TF.GeneratePIN;
            sendSMSOrEmail(TF.sPIN, TF.sendTo);

            sRisp := TF.ShowModal;

            //* se mrYes, allora devo reinviare il codice ....
            if sRisp = mrYes then bRip := true
                             else bRip := false;

        end;

        TF.Free;


        if sRisp = mrCancel then
        begin
            //* Ok, il PIN inserito è sbagliato .....

//            idNome.Text := '';
//            idCognome.Text := '';
//            idEmail.Text := '';
//            idTel.Text := '';
//            idCAP.Text := '';
//            idGiorno.Text := '';
//            idMese.Text := '';
//            idAnno.Text := '';
//
//            CheckBox1.IsChecked := true;
//            CheckBox2.IsChecked := false;
//
//            CheckBox3.IsChecked := true;
//            CheckBox5.IsChecked := true;

            idF := 1;
            setFuoco;

            Timer1.Enabled := true;

        end
        else if sRisp = mrOK then
        begin
            //* Ok, il PIN inserito è corretto ..... Invio la carta via email/sms e la stampo ....
            GenerateCARD;
        end;
  end
  else
  begin
     //* Facciamo il check della card ....
     CheckCARD;
  end;

end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  CheckBox2.IsChecked := CheckBox1.IsChecked;
end;


procedure TForm2.CheckBox2Click(Sender: TObject);
begin
   CheckBox1.IsChecked := CheckBox2.IsChecked;
end;

procedure TForm2.CheckCARD;
begin
      //* Creazione della Fidelity CARD .....

      //* Invia (SMS o Mail) di conferma ....
      RESTClient1.Authenticator := HTTPBasicAuthenticator1;

      RESTClient1.BaseURL              := EndPointURL + 'login';
      HTTPBasicAuthenticator1.Username := 'andrea';
      HTTPBasicAuthenticator1.Password := '123';

      RESTRequest1.Method := rmGET;
      RESTRequest1.Execute;

      var sResponse1 : String := RESTResponse1.Content;

      var jo : TJSONObject := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sResponse1), 0) as TJSONObject;

      var token : String := jo.GetValue<String>('token');

      OAuth2Authenticator1.AccessToken  := token;
      OAuth2Authenticator1.ResponseType := TOAuth2ResponseType.rtTOKEN;
      OAuth2Authenticator1.TokenType    := TOAuth2TokenType.ttBEARER;

      var url : String := EndPointURL + 'cardcheck/store/'+StoreCoded;

      RESTClient1.BaseURL := url;
      RESTClient1.Authenticator := OAuth2Authenticator1;

      //* Inviamo l'SMS di registazione
      var Obj : TJSONObject := TJSONObject.Create;

      Obj.AddPair('email', idEMail_R.Text.Trim);
      Obj.AddPair('telephone', idTel_R.Text.Trim);

      RESTRequest1.Method := rmPOST;
      RESTRequest1.Resource := '';
      RESTRequest1.ClearBody;

      RESTRequest1.AddBody(Obj.ToString, TRESTContentType.ctAPPLICATION_JSON);
      RESTRequest1.Execute;

      sResponse1 := RESTResponse1.Content;
      jo := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sResponse1), 0) as TJSONObject;

      //* Vediamo se possiamo scaricare l'immagine ....

      var result : Integer := jo.GetValue<Integer>('result');

      if result = 0 then
      begin
          var nCard    : String := jo.GetValue<String>('card');
          var nome     : String := jo.GetValue<String>('name');
          var cognome  : String := jo.GetValue<String>('surname');
          var email    : String := jo.GetValue<String>('email');
          var telefono : String := jo.GetValue<String>('telephone');
          var sesso    : String := jo.GetValue<String>('sex');
          var cap      : String := jo.GetValue<String>('cap');
          var dataN    : String := jo.GetValue<String>('birthday');

          var chk1     : String := jo.GetValue<String>('checkbox1');
          var chk2     : String := jo.GetValue<String>('checkbox2');


          if email.Trim.StartsWith('[#TEL]') then email := '';

          CodCARTA := nCard;
          idCODE := jo.GetValue<Integer>('id');

          idNome.Text    := nome;
          idCognome.Text := cognome;
          idEmail.Text   := email;
          idTel.Text     := telefono;

          var TS : TArray<String> := dataN.Replace('-',';').Split([';']);
          idAnno.Text   := TS[0];
          idMese.Text   := TS[1];
          idGiorno.Text := TS[2];

          idCAP.Text := cap;

          CheckBox1.IsChecked := false;
          CheckBox2.IsChecked := true;

          if sesso.Trim.ToUpper = 'M' then
          begin
             CheckBox1.IsChecked := true;
             CheckBox2.IsChecked := false;
          end;

          CheckBox3.IsChecked := true;
          CheckBox5.IsChecked := true;

//          if chk1.Trim.ToUpper = 'S' then CheckBox3.IsChecked := true;
//          if chk2.Trim.ToUpper = 'S' then CheckBox5.IsChecked := true;

          idF := 0;
          TabControl1.TabIndex := 1;

          idEMail.ReadOnly := false;
          if idEmail.Text.Trim <> '' then idEmail.ReadOnly := true;

          TipoOperazione := 0;

          setFuoco;
      end
      else
      begin
         //* non esiste alcuna registrazione di tessera fidelity, vuoi registrarla ?

         var TF : TFormA := TFormA.Create(Self);

         TF.Label2.Text := 'Non risulta nessuna tessera collegata' + sLineBreak +
                           'ai dati inseriti.' + sLineBreak + sLineBreak +
                           'Vuoi crearla ?';

         var sRisp : Integer := TF.ShowModal;

         TF.Free;

         if sRisp = mrCancel then Close
         else
         begin

             idF := 0;

             idCODE := 0;
             CodCARTA := '';

             idEMail.Text := idEMail_R.Text;
             idTel.Text   := idTel_R.Text;

             idNome.Text    := '';
             idCognome.Text := '';
             idCAP.Text     := '';

             idGiorno.Text  := '';
             idMese.Text    := '';
             idAnno.Text    := '';

             CheckBox1.IsChecked := true;
             CheckBox2.IsChecked := false;

             CheckBox3.IsChecked := true;
             CheckBox5.IsChecked := true;

             TabControl1.TabIndex := 1;

             TipoOperazione := 0;
             setFuoco;

         end;

      end;


end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  idF := 0;
  setFuoco;
end;

procedure TForm2.frxReport1BeforePrint(Sender: TfrxReportComponent);
begin
  TfrxPictureView(frxReport1.FindObject('Picture1')).Picture.LoadFromFile(NomeDellaCarta);  // use a reference
end;

procedure TForm2.frxReport1PrintReport(Sender: TObject);
begin
   //
end;

procedure TForm2.GenerateCARD;
begin
   //* Creazione della Fidelity CARD .....

      //* Invia (SMS o Mail) di conferma ....
      RESTClient1.Authenticator := HTTPBasicAuthenticator1;

      RESTClient1.BaseURL              := EndPointURL + 'login';
      HTTPBasicAuthenticator1.Username := 'andrea';
      HTTPBasicAuthenticator1.Password := '123';

      RESTRequest1.Method := rmGET;
      RESTRequest1.Execute;

      var sResponse1 : String := RESTResponse1.Content;

      var jo : TJSONObject := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sResponse1), 0) as TJSONObject;

      var token : String := jo.GetValue<String>('token');

      OAuth2Authenticator1.AccessToken  := token;
      OAuth2Authenticator1.ResponseType := TOAuth2ResponseType.rtTOKEN;
      OAuth2Authenticator1.TokenType    := TOAuth2TokenType.ttBEARER;

      var url : String := EndPointURL + 'card';

      RESTClient1.BaseURL := url;
      RESTClient1.Authenticator := OAuth2Authenticator1;

      //* Inviamo l'SMS di registazione
      var Obj : TJSONObject := TJSONObject.Create;

      Obj.AddPair('id', idCODE);
      Obj.AddPair('storecode', StoreCoded);

      Obj.AddPair('name', idNome.Text.Trim);
      Obj.AddPair('surname', idCognome.Text.Trim);

      Obj.AddPair('email', idEMail.Text.Trim);
      Obj.AddPair('telephone', idTel.Text.Trim);
      Obj.AddPair('card', CodCARTA);

      var sex : String := 'M';
      if CheckBox2.IsChecked then sex := 'F';
      Obj.AddPair('sex', sex);

      Obj.AddPair('cap', idCAP.Text.Trim);

      var Data : TDateTime;
      Data := EncodeDate(StrToIntDef(idAnno.Text, Date.GetYear), StrToIntDef(idMese.Text, Date.GetMonth), StrToIntDef(idGiorno.Text, Date.GetDay));

      Obj.AddPair('birthday', FormatDateTime('yyyy-MM-dd', Data));

      Obj.AddPair('checkbox1', ifThen(CheckBox3.IsChecked, 'S', 'N'));
      Obj.AddPair('checkbox2', ifThen(CheckBox5.IsChecked, 'S', 'N'));

      Obj.AddPair('is_printed', 'S');

      RESTRequest1.Method := rmPOST;
      RESTRequest1.Resource := '';
      RESTRequest1.ClearBody;

      RESTRequest1.AddBody(Obj.ToString, TRESTContentType.ctAPPLICATION_JSON);
      RESTRequest1.Execute;

      sResponse1 := RESTResponse1.Content;
      jo := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sResponse1), 0) as TJSONObject;

      //* Vediamo se possiamo scaricare l'immagine ....

      var nCard : String := jo.GetValue<String>('card');

      var sUrl : String := 'https://barcode.tec-it.com/barcode.ashx?data='+LeftStr(nCard,12)+'&code=EAN13&imagetype=Png&download=true';
      var sUrl1 : String := 'https://barcode.tec-it.com/barcode.ashx?data='+LeftStr(nCard,12)+'&code=EAN13&imagetype=Png&rotation=90&download=true';

      var FileName  : String := 'file_'+nCard + '.png';
      var FileName1 : String := 'xfile_'+nCard + '.png';

      if TFile.Exists(FileName) then TFile.Delete(FileName);
      if TFile.Exists(FileName1) then TFile.Delete(FileName1);

      var FS  : TFileStream := TFileStream.Create(FileName, fmCreate);
      var FS1 : TFileStream := TFileStream.Create(FileName1, fmCreate);
      try

          try
              NetHTTPClient1.Get(sUrl, FS);
              NetHTTPClient1.Get(sUrl1, FS1);
          finally
              FS.Free;
              FS1.Free;
          end;

      except
          //* DeleteFile(FileName);
          TFile.Delete(FileName);
          TFile.Delete(FileName1);
      end;

      NomeDellaCarta := FileName1;
      NomeDellaCarta_ToPrint := FileName;

      TabControl1.TabIndex := 3;
      Sleep(10);

      Timer3.Enabled := true;

      frxReport1.LoadFromFile( ReportCard );
      //* frxReport1.LoadFromFile('sCard_A4.fr3');
      //* frxReport1.LoadFromFile('sCard.fr3');

      if sPrinter.Trim.ToUpper <> 'DEFAULT' then
         frxReport1.PrintOptions.Printer := sPrinter;

      frxReport1.PrepareReport(true);
      frxReport1.PrintOptions.ShowDialog := false;
      frxReport1.Print;


end;

procedure TForm2.idAnnoClick(Sender: TObject);
begin
  idF := 7;
  setFuoco;
end;

procedure TForm2.idCAPClick(Sender: TObject);
begin
   idF := 4;
  setFuoco;
end;

procedure TForm2.idCognomeClick(Sender: TObject);
begin
  idF := 1;
  setFuoco;
end;

procedure TForm2.idEmailClick(Sender: TObject);
begin
  idF := 2;
  if idEMail.ReadOnly then idF := 3;
  setFuoco;
end;

procedure TForm2.IdEmail_RClick(Sender: TObject);
begin
  idF_R := 0;
  setFuoco_R;
end;

procedure TForm2.idGiornoClick(Sender: TObject);
begin
   idF := 5;
  setFuoco;
end;

procedure TForm2.idMeseClick(Sender: TObject);
begin
  idF := 6;
  setFuoco;
end;

procedure TForm2.idNomeClick(Sender: TObject);
begin
  idF := 0;
  setFuoco;
end;

procedure TForm2.idTelClick(Sender: TObject);
begin
  idF := 3;
  setFuoco;
end;

procedure TForm2.idTel_RClick(Sender: TObject);
begin
  idF_R := 1;
  setFuoco_R;
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
   Close;
end;

procedure TForm2.Label1Click(Sender: TObject);
begin
   CodCARTA := '';
   idCODE := 0;

   Label5.Text := 'Inserisci la Mail o il Telefono con la quale ti sei registrato/a!';

   TabControl1.TabIndex := 2;

   TipoOperazione := 1;

   idF_R := 0;
   setFuoco_R;
end;

procedure TForm2.Label6Click(Sender: TObject);
begin
   CodCARTA := '';
   idCODE := 0;

   Label5.Text := 'Inserisci i tuai dati Anagrafici!';

   TabControl1.TabIndex := 1;

   TipoOperazione := 0;

   idF := 0;
   setFuoco;
end;

procedure TForm2.LOAD_CONFIG;
begin


   var CFG_NOME : String := ExtractFilePath(ParamStr(0));

   var IniF : TIniFile := TIniFile.Create(CFG_NOME + 'CFG_PGM.ini');


   EndPointURL := IniF.ReadString('GLOBAL', 'EndPoint', 'http://10.1.1.230/bapi/');
   StoreCoded  := IniF.ReadString('GLOBAL', 'StoreCode', '003009712');
   ReportCard  := IniF.ReadString('GLOBAL', 'ReportCard', 'sCard.fr3');

   TimeOut   := IniF.ReadInteger('GLOBAL', 'TimeOut', 120);
   FullMode  := IniF.ReadString('GLOBAL', 'FullMode', 'N');

   sPrinter := IniF.ReadString('GLOBAL', 'defPrinter', 'Default');

   IniF.Free;
end;

procedure TForm2.sendSMSOrEmail(codPIN: String; Tipo : Integer);
begin
      //* Invia (SMS o Mail) di conferma ....
      RESTClient1.Authenticator := HTTPBasicAuthenticator1;

      RESTClient1.BaseURL := EndPointURL + 'login';
      HTTPBasicAuthenticator1.Username := 'andrea';
      HTTPBasicAuthenticator1.Password := '123';

      RESTRequest1.Method := rmGET;
      RESTRequest1.Execute;

      var sResponse1 : String := RESTResponse1.Content;

      var jo : TJSONObject := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sResponse1), 0) as TJSONObject;

      var token : String := jo.GetValue<String>('token');

      OAuth2Authenticator1.AccessToken := token;
      OAuth2Authenticator1.ResponseType := TOAuth2ResponseType.rtTOKEN;
      OAuth2Authenticator1.TokenType := TOAuth2TokenType.ttBEARER;

      var url : String := EndPointURL + 'sendsms/' + StoreCoded;
      if Tipo = 1 then url := EndPointURL +  'sendmail/' + StoreCoded;

      RESTClient1.BaseURL := url;
      RESTClient1.Authenticator := OAuth2Authenticator1;

      //* Inviamo l'SMS di registazione
      var Obj : TJSONObject := TJSONObject.Create;

      if Tipo = 0 then
      begin
          Obj.AddPair('message', 'Tuttigiorni - Card!' + sLineBreak + ' Il PIN per la tua registrazione è : ' + codPIN);
          Obj.AddPair('sender', 'Tuttigiorni');
          Obj.AddPair('telephone', idTel.Text);
      end
      else
      begin
          Obj.AddPair('body', '<b>Tuttigiorni - Card!</b><br><br>Il PIN per la tua registrazione è : <b>'+codPIN+'</b> ');
          Obj.AddPair('subject', 'Tuttigiorni Card - Codice di verifica!');

          Obj.AddPair('domain', '@tuttigiorni.it');
          Obj.AddPair('from', 'no-reply@tuttigiorni.it');
          Obj.AddPair('fromName', 'Tuttigiorni.it');

          Obj.AddPair('email', idEMail.Text);
      end;

      RESTRequest1.Method := rmPOST;
      RESTRequest1.Resource := '';
      RESTRequest1.ClearBody;

      RESTRequest1.AddBody(Obj.ToString, TRESTContentType.ctAPPLICATION_JSON);
      RESTRequest1.Execute;
end;

procedure TForm2.setFuoco;
begin
  //* Focus ...
       if idF = 0 then
       begin
          idNome.SetFocus;
          idNome.SelStart := idNome.Text.Length;
       end
  else if idF = 1 then
  begin
      idCognome.SetFocus;
      idCognome.SelStart := idCognome.Text.Length;
  end
  else if idF = 2 then
  begin
      idEmail.SetFocus;
      idEmail.SelStart := idEmail.Text.Length;
  end
  else if idF = 3 then
  begin
      idTel.SetFocus;
      idTel.SelStart := idTel.Text.Length;
  end
  else if idF = 4 then
  begin
      idCAP.SetFocus;
      idCAP.SelStart := idCAP.Text.Length;
  end
  else if idF = 5 then
  begin
      idGiorno.SetFocus;
      idGiorno.SelStart := idGiorno.Text.Length;
  end
  else if idF = 6 then
  begin
      idMese.SetFocus;
      idMese.SelStart := idMese.Text.Length;
  end
  else if idF = 7 then
  begin
      idAnno.SetFocus;
      idAnno.SelStart := idAnno.Text.Length;
  end;
end;


procedure TForm2.setFuoco_R;
begin
  //* Focus ...
  if idF_R = 0 then
  begin
      idEmail_R.SetFocus;
      idEmail_R.SelStart := idEmail_R.Text.Length;
  end
  else if idF_R = 1 then
  begin
      idTel_R.SetFocus;
      idTel_R.SelStart := idTel_R.Text.Length;
  end;
end;



procedure TForm2.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  Close;
end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := false;

  LOAD_CONFIG;

  Timer1.Enabled  := false;
  Timer1.Interval := TimeOut * 1000;
  Timer1.Enabled  := true;

  if FullMode.Trim.ToUpper = 'S' then
  begin
      Form2.FullScreen := true;
      Form2.BringToFront;

  //    Form2.BorderStyle := TFmxFormBorderStyle.None;
  //    Form2.WindowState := TWindowState.wsMinimized;
  //    Form2.Realign;
  end;


end;

procedure TForm2.Timer3Timer(Sender: TObject);
begin
   Timer3.Enabled := false;

      var TF : TFormCard := TFormCard.Create(nil);

      TF.ImageViewer1.Bitmap.LoadFromFile(NomeDellaCarta_ToPrint);

      TF.Label2.Text := 'Complimenti!' + sLineBreak +
                        'Questo è il codice della tua' + sLineBreak +
                        'Tuttigiorni Card' + sLineBreak + sLineBreak +
                        'Attendi che venga stampata e portala sempre con te!';

     TF.ShowModal;
     TF.Free;
     Close;
end;

end.
