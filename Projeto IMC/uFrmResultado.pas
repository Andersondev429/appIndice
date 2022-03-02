unit uFrmResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDadosPessoa;

type
  TFrmResultado = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    LblAltura: TLabel;
    LblPeso: TLabel;
    LblSexo: TLabel;
    LblIMC: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmResultado: TFrmResultado;

implementation

{$R *.dfm}

procedure TFrmResultado.FormShow(Sender: TObject);
begin
  LblAltura.Caption := floatToStr(P_Dados_Pessoa.Altura);
  LblPeso.Caption   := floatToStr(P_Dados_Pessoa.Peso);
  LblSexo.Caption   := P_Dados_Pessoa.Sexo;
  LblIMC.Caption    := P_Dados_Pessoa.IMC;

end;

end.
