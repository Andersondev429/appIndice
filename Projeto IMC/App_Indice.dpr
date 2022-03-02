program App_Indice;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uFrmRequisitos in 'uFrmRequisitos.pas' {FrmRequisitos},
  uFrmResultado in 'uFrmResultado.pas' {FrmResultado},
  uDadosPessoa in 'uDadosPessoa.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Calculadora IMC';
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmRequisitos, FrmRequisitos);
  Application.CreateForm(TFrmResultado, FrmResultado);
  Application.Run;
end.
