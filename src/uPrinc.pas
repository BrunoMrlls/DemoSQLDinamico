unit uPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ComCtrls;

type
  Tform1 = class(TForm)
    m1: TMemo;
    pn0: TPanel;
    cbCampo: TComboBox;
    cbOper: TComboBox;
    edtvrl: TEdit;
    btnMore: TBitBtn;
    lstFiltro: TListBox;
    cbOperLog: TComboBox;
    btnSearch: TBitBtn;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnMoreClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure lstFiltroDblClick(Sender: TObject);
    procedure lstFiltroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    function VerificaCamposValidos: Boolean;
    procedure clearFields;
    { Private declarations }
  public
    { Public declarations }
    nrFiltro: Word;
  end;

var
  form1: Tform1;
const
  SELECT_PADRAO = ' SELECT * FROM table WHERE 1=1 ';

implementation

{$R *.dfm}

procedure Tform1.btnSearchClick(Sender: TObject);
begin
  m1.Text := lstFiltro.Items.Text;
end;

procedure Tform1.btnMoreClick(Sender: TObject);
begin

    if VerificaCamposValidos then begin
        if nrFiltro = 0 then begin
           cbOperLog.Visible := True;
           lstFiltro.Items.Add(SELECT_PADRAO);
        end;
        lstFiltro.Items.Add(cbOperLog.Text+' '+cbCampo.Text+' '+cbOper.Text+' '+edtvrl.Text);
        Inc(nrFiltro);
        clearFields;
    end;

end;

function Tform1.VerificaCamposValidos(): Boolean;
begin
    if (edtvrl.Text <> '') and (cbCampo.ItemIndex > 0) then begin //campos devem estar preenchidos

        if nrFiltro = 0
        then Result := True //se for primeira linha da consulta, é válido. pq é SELECT_PADRAO
        else Result := (cbOperLog.Text <> ''); //é válido se o operador lógico estiver preenchido

    end;
end;

procedure Tform1.clearFields();
begin
  edtvrl.Clear;
  cbCampo.ItemIndex := 0;
  cbOper.ItemIndex := 0;
  cbOperLog.ItemIndex := 0;
end;


procedure Tform1.FormCreate(Sender: TObject);
begin
  m1.Lines.Clear;
  cbOperLog.Visible := False;
end;

procedure Tform1.lstFiltroDblClick(Sender: TObject);
begin
  if lstFiltro.ItemIndex <> 0 then lstFiltro.DeleteSelected;
end;

procedure Tform1.lstFiltroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) and (lstFiltro.ItemIndex <> 0) then lstFiltro.DeleteSelected;
end;

end.
