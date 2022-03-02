unit uDadosPessoa;

interface

uses
  System.SysUtils;

  Type
    RDados_Pessoa = record
    Altura: Double;
    Peso: Double;
    Sexo: String;
    IMC: String;
  end;

  function CalcularIMC(p_Peso, p_Altura: Double; p_Sexo: String): String;

  var
    P_Dados_Pessoa : RDados_Pessoa;
implementation

function CalcularIMC(p_Peso, p_Altura: Double; p_Sexo: String): String;
var
  l_IMC: Double;
  l_StrIMC: String;
begin
  if p_Sexo = '' then
  raise Exception.Create('Obrigatório informar o sexo');

  try
    l_IMC :=p_Peso/(p_Altura*p_Altura);
    if p_Sexo = 'F' then
      begin
        if (l_IMC < 19) then
          l_StrIMC := 'Abaixo do normal'
        else
          if (l_IMC >= 19.1) and (l_IMC <= 23.9)then
            l_StrIMC := 'Normal'
        else
          if (l_IMC > 24) and (l_IMC <= 28.9)then
            l_StrIMC := 'Obesidade leve'
        else
          if (l_IMC > 29) and (l_IMC <= 38.9)then
            l_StrIMC := 'Obesidade moderada'
        else
          if (l_IMC > 38.9) then
            l_StrIMC := 'Obesidade Mórbida';
      end
    else
      begin
        if p_Sexo = 'M' then
          begin
            if (l_IMC < 20) then
              l_StrIMC := 'Abaixo do normal'
            else
              if (l_IMC >= 20) and (l_IMC <= 24.9)then
                l_StrIMC := 'Normal'
            else
              if (l_IMC >= 25) and (l_IMC <= 29.9)then
                l_StrIMC := 'Obesidade leve'
            else
              if (l_IMC >= 30) and (l_IMC <= 39.9)then
                l_StrIMC := 'Obesidade moderada'
            else
              if (l_IMC > 39.9) then
                l_StrIMC := 'Obesidade Mórbida';
          end;
      end;
      Result := l_StrIMC;
  except
    raise Exception.Create('Erro ao efetuar o cálculo do IMC.');
  end;
end;

end.
