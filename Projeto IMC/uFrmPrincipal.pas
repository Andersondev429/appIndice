unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uFrmRequisitos, uFrmResultado, uDadosPessoa;

type
  TFrmPrincipal = class(TForm)
    BtnResultado: TButton;
    BtnRequisitos: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    EdtAltura: TEdit;
    EdtPeso: TEdit;
    CmbSexo: TComboBox;
    procedure BtnRequisitosClick(Sender: TObject);
    procedure BtnResultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnRequisitosClick(Sender: TObject);
begin
  FrmRequisitos.Show;
end;

procedure TFrmPrincipal.BtnResultadoClick(Sender: TObject);
begin
  try
    P_Dados_Pessoa.Altura := StrToFloat(EdtAltura.Text);
    P_Dados_Pessoa.Peso   := StrToFloat(EdtPeso.Text);
    P_Dados_Pessoa.Sexo   := CmbSexo.Text;
    P_Dados_Pessoa.IMC    := CalcularIMC(P_Dados_Pessoa.Peso, P_Dados_Pessoa.Altura, P_Dados_Pessoa.Sexo);
    FrmResultado.Show;
  except
    ShowMessage('Dados inválidos!')
  end;
end;

end.
